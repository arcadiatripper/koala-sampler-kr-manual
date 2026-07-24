(() => {
  const overlay = document.querySelector('[data-search-overlay]');
  const openButtons = [...document.querySelectorAll('[data-search-open]')];
  const closeButtons = [...document.querySelectorAll('[data-search-close]')];
  const form = document.querySelector('[data-global-search-form]');
  const input = document.querySelector('[data-global-search-input]');
  const results = document.querySelector('[data-global-search-results]');

  if (!overlay || !openButtons.length || !form || !input || !results) return;

  let documents = [];
  let indexState = 'idle';
  let indexPromise = null;
  let previousFocus = null;

  const normalizeTerms = (query) => query
    .trim()
    .toLocaleLowerCase('ko-KR')
    .split(/\s+/)
    .filter(Boolean);

  const escapePattern = (text) => text.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

  const appendHighlightedText = (element, text, terms) => {
    const source = String(text || '');
    if (!terms.length) {
      element.textContent = source;
      return;
    }

    const pattern = new RegExp(`(${terms.map(escapePattern).join('|')})`, 'giu');
    const normalizedTerms = new Set(terms.map((term) => term.toLocaleLowerCase('ko-KR')));
    const fragment = document.createDocumentFragment();

    source.split(pattern).forEach((part) => {
      if (!part) return;

      if (normalizedTerms.has(part.toLocaleLowerCase('ko-KR'))) {
        const mark = document.createElement('mark');
        mark.textContent = part;
        fragment.append(mark);
      } else {
        fragment.append(document.createTextNode(part));
      }
    });

    element.replaceChildren(fragment);
  };

  const makeSnippet = (text, terms) => {
    const source = String(text || '').replace(/\s+/g, ' ').trim();
    if (!source) return '';

    const normalized = source.toLocaleLowerCase('ko-KR');
    const firstMatch = terms.reduce((earliest, term) => {
      const index = normalized.indexOf(term);
      return index === -1 ? earliest : Math.min(earliest, index);
    }, Number.POSITIVE_INFINITY);
    const matchIndex = Number.isFinite(firstMatch) ? firstMatch : 0;
    const start = Math.max(0, matchIndex - 70);
    const end = Math.min(source.length, start + 190);

    return `${start > 0 ? '…' : ''}${source.slice(start, end).trim()}${end < source.length ? '…' : ''}`;
  };

  const buildResultUrl = (url, query) => {
    const destination = new URL(url, window.location.origin);
    destination.searchParams.set('highlight', query.trim());
    return `${destination.pathname}${destination.search}${destination.hash}`;
  };

  const markMatches = (root, terms, remainingLimit) => {
    if (!root || remainingLimit <= 0) return 0;

    const pattern = new RegExp(`(${terms.map(escapePattern).join('|')})`, 'giu');
    const normalizedTerms = new Set(terms.map((term) => term.toLocaleLowerCase('ko-KR')));
    const walker = document.createTreeWalker(root, window.NodeFilter.SHOW_TEXT, {
      acceptNode(node) {
        const parent = node.parentElement;
        if (
          !node.nodeValue.trim()
          || !parent
          || parent.closest('script, style, textarea, input, select, option, button, mark, [aria-hidden="true"]')
        ) {
          return window.NodeFilter.FILTER_REJECT;
        }
        return window.NodeFilter.FILTER_ACCEPT;
      }
    });
    const textNodes = [];
    let currentNode = walker.nextNode();

    while (currentNode) {
      textNodes.push(currentNode);
      currentNode = walker.nextNode();
    }

    let markedCount = 0;

    textNodes.forEach((textNode) => {
      if (markedCount >= remainingLimit) return;

      const fragment = document.createDocumentFragment();
      let hasMatch = false;

      textNode.nodeValue.split(pattern).forEach((part) => {
        if (!part) return;

        if (
          markedCount < remainingLimit
          && normalizedTerms.has(part.toLocaleLowerCase('ko-KR'))
        ) {
          const mark = document.createElement('mark');
          mark.className = 'search-highlight';
          mark.textContent = part;
          fragment.append(mark);
          markedCount += 1;
          hasMatch = true;
        } else {
          fragment.append(document.createTextNode(part));
        }
      });

      if (hasMatch) textNode.parentNode.replaceChild(fragment, textNode);
    });

    return markedCount;
  };

  const getHighlightRoots = (article) => {
    if (!window.location.hash) return [article];

    let targetId = window.location.hash.slice(1);
    try {
      targetId = decodeURIComponent(targetId);
    } catch (error) {
      targetId = window.location.hash.slice(1);
    }

    const target = document.getElementById(targetId);
    if (!target || !article.contains(target)) return [article];

    const referencePart = target.closest('.reference-part');
    if (referencePart) {
      const roots = [referencePart];
      let nextPart = referencePart.nextElementSibling;

      while (nextPart && nextPart.classList.contains('reference-part')) {
        const hasNewSectionHeading = [...nextPart.children]
          .some((child) => child.matches('h2'));
        if (hasNewSectionHeading) break;

        roots.push(nextPart);
        nextPart = nextPart.nextElementSibling;
      }

      return roots;
    }

    const start = target.closest('p, h2, h3') || target;
    const roots = [];
    let hasSectionHeading = start.matches('h2');
    let current = start;

    while (current && article.contains(current)) {
      if (current !== start && current.matches('h2')) {
        if (hasSectionHeading) break;
        hasSectionHeading = true;
      }

      roots.push(current);
      current = current.nextElementSibling;
    }

    return roots.length ? roots : [article];
  };

  const highlightPageFromSearch = () => {
    const query = new URLSearchParams(window.location.search).get('highlight');
    const terms = normalizeTerms(query || '');
    const article = document.querySelector('.article-body');

    if (!terms.length || !article) return;

    const roots = getHighlightRoots(article);
    let markedCount = 0;

    roots.forEach((root) => {
      markedCount += markMatches(root, terms, 40 - markedCount);
    });

    if (!markedCount) return;

    const sectionHeading = roots
      .map((root) => (
        root.matches && root.matches('h2, h3')
          ? root
          : root.querySelector && root.querySelector('h2, h3')
      ))
      .find(Boolean);
    const firstHighlight = article.querySelector('.search-highlight');
    const scrollTarget = sectionHeading || firstHighlight;

    if (scrollTarget) {
      let keepTargetVisible = true;
      const scrollToTarget = () => {
        if (keepTargetVisible) scrollTarget.scrollIntoView({ block: 'start' });
      };
      const stopFollowingTarget = () => {
        keepTargetVisible = false;
      };

      window.requestAnimationFrame(scrollToTarget);
      window.setTimeout(scrollToTarget, 250);

      [...article.querySelectorAll('img')]
        .filter((image) => (
          !image.complete
          && Boolean(image.compareDocumentPosition(scrollTarget) & window.Node.DOCUMENT_POSITION_FOLLOWING)
        ))
        .forEach((image) => {
          image.addEventListener('load', scrollToTarget, { once: true });
          image.addEventListener('error', scrollToTarget, { once: true });
        });

      if (document.readyState !== 'complete') {
        window.addEventListener('load', scrollToTarget, { once: true });
      }

      window.addEventListener('wheel', stopFollowingTarget, { once: true, passive: true });
      window.addEventListener('touchstart', stopFollowingTarget, { once: true, passive: true });
      window.addEventListener('pointerdown', stopFollowingTarget, { once: true, passive: true });
      window.setTimeout(stopFollowingTarget, 5000);
    }
  };

  const setExpanded = (expanded) => {
    openButtons.forEach((button) => {
      button.setAttribute('aria-expanded', String(expanded));
    });
  };

  const appendMessage = (message) => {
    const paragraph = document.createElement('p');
    paragraph.textContent = message;
    results.append(paragraph);
  };

  const loadDocuments = () => {
    if (indexPromise) return indexPromise;

    indexState = 'loading';
    indexPromise = window.fetch(overlay.dataset.searchIndexUrl, {
      credentials: 'same-origin'
    })
      .then((response) => {
        if (!response.ok) throw new Error(`Search index returned ${response.status}`);
        return response.json();
      })
      .then((data) => {
        documents = Array.isArray(data) ? data : [];
        indexState = 'ready';
        renderResults(input.value);
      })
      .catch(() => {
        indexState = 'error';
        results.replaceChildren();
        appendMessage('검색 데이터를 불러오지 못했습니다. 페이지를 새로고침한 뒤 다시 시도하세요.');
      });

    return indexPromise;
  };

  const renderResults = (query) => {
    const terms = normalizeTerms(query);

    results.replaceChildren();

    if (indexState === 'loading' || indexState === 'idle') {
      appendMessage('검색을 준비하고 있습니다.');
      return;
    }

    if (indexState === 'error') {
      appendMessage('검색 데이터를 불러오지 못했습니다. 페이지를 새로고침한 뒤 다시 시도하세요.');
      return;
    }

    if (!terms.length) {
      appendMessage('앱에 표시되는 영어 버튼 이름이나 궁금한 한국어 기능을 입력하세요.');
      return;
    }

    const scoredMatches = documents
      .map((document) => {
        const title = `${document.title} ${document.label}`.toLocaleLowerCase('ko-KR');
        const summary = String(document.summary || '').toLocaleLowerCase('ko-KR');
        const content = String(document.content || '').toLocaleLowerCase('ko-KR');
        const haystack = `${title} ${summary} ${content}`;

        if (!terms.every((term) => haystack.includes(term))) return null;

        const score = terms.reduce((total, term) => {
          if (title.includes(term)) return total + 6;
          if (summary.includes(term)) return total + 3;
          return total + 1;
        }, document.type === 'section' ? 2 : 0);

        return { document, score };
      })
      .filter(Boolean);
    const pagesWithSectionMatches = new Set(
      scoredMatches
        .filter(({ document }) => document.type === 'section')
        .map(({ document }) => document.url.split('#')[0])
    );
    const matches = scoredMatches
      .filter(({ document }) => (
        document.type !== 'page'
        || !pagesWithSectionMatches.has(document.url.split('#')[0])
      ))
      .sort((a, b) => b.score - a.score || a.document.title.localeCompare(b.document.title, 'ko'))
      .slice(0, 12);

    appendMessage(
      matches.length
        ? `${matches.length}개의 관련 항목을 찾았습니다.`
        : '일치하는 가이드를 찾지 못했습니다.'
    );

    if (!matches.length) return;

    const list = document.createElement('ul');

    matches.forEach(({ document: match }) => {
      const item = document.createElement('li');
      const link = document.createElement('a');
      const label = document.createElement('span');
      const title = document.createElement('strong');
      const summary = document.createElement('small');
      const snippet = makeSnippet(match.content || match.summary, terms);

      link.href = buildResultUrl(match.url, query);
      label.className = 'ui-label';
      label.textContent = `${match.label}${match.type === 'section' ? ' · 관련 항목' : ' · 가이드'}`;
      appendHighlightedText(title, match.title, terms);
      appendHighlightedText(summary, snippet || match.summary, terms);
      link.append(label, title, summary);
      item.append(link);
      list.append(item);
    });

    results.append(list);
  };

  const openSearch = (sourceButton) => {
    previousFocus = sourceButton || document.activeElement;
    overlay.hidden = false;
    document.body.classList.add('search-open');
    setExpanded(true);

    const menuButton = document.querySelector('[data-menu-toggle]');
    const mobileMenu = document.querySelector('[data-mobile-menu]');
    if (menuButton && mobileMenu && !mobileMenu.hidden) {
      menuButton.setAttribute('aria-expanded', 'false');
      mobileMenu.hidden = true;
    }

    window.requestAnimationFrame(() => {
      input.focus();
      input.select();
    });

    loadDocuments();
  };

  const closeSearch = () => {
    overlay.hidden = true;
    document.body.classList.remove('search-open');
    setExpanded(false);

    if (previousFocus && typeof previousFocus.focus === 'function') {
      previousFocus.focus();
    }
  };

  openButtons.forEach((button) => {
    button.addEventListener('click', () => openSearch(button));
  });

  closeButtons.forEach((button) => {
    button.addEventListener('click', closeSearch);
  });

  form.addEventListener('submit', (event) => {
    event.preventDefault();
  });

  input.addEventListener('input', () => {
    if (indexState === 'idle') loadDocuments();
    renderResults(input.value);
  });

  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && !overlay.hidden) {
      closeSearch();
    }
  });

  highlightPageFromSearch();
})();
