---
title: SEARCH — 기능 검색
description: Koala Sampler 한국어 가이드에서 화면, 버튼, 기능과 용어를 검색합니다.
ui_label: SEARCH
reading_time: 바로 찾기
level: 전체 가이드
summary: 앱에서 본 영어 버튼명이나 궁금한 한국어 기능을 입력하세요.
---

<form class="guide-search" role="search" data-guide-search>
  <label for="guide-search-input">무엇을 찾고 있나요?</label>
  <div class="guide-search__controls">
    <input id="guide-search-input" name="q" type="search" autocomplete="off" placeholder="예: QUANTIZE, 저장, 리샘플" data-guide-search-input>
    <button type="submit">검색</button>
  </div>
</form>

<div class="guide-search-results" aria-live="polite" data-guide-search-results>
  <p>버튼 이름은 앱에 보이는 영어 그대로 검색해도 됩니다.</p>
</div>

<script>
  (() => {
    const documents = [
      {% for guide in site.guide %}
        {% unless guide.url == page.url %}
        {
          title: {{ guide.title | jsonify }},
          label: {{ guide.ui_label | default: "" | jsonify }},
          summary: {{ guide.summary | default: guide.description | default: "" | jsonify }},
          content: {{ guide.content | strip_html | strip_newlines | normalize_whitespace | jsonify }},
          url: {{ guide.url | relative_url | jsonify }}
        }{% unless forloop.last %},{% endunless %}
        {% endunless %}
      {% endfor %}
    ];

    const form = document.querySelector('[data-guide-search]');
    const input = document.querySelector('[data-guide-search-input]');
    const results = document.querySelector('[data-guide-search-results]');

    const render = (query) => {
      const terms = query.trim().toLocaleLowerCase('ko-KR').split(/\s+/).filter(Boolean);
      results.replaceChildren();

      if (!terms.length) {
        const hint = document.createElement('p');
        hint.textContent = '버튼 이름은 앱에 보이는 영어 그대로 검색해도 됩니다.';
        results.append(hint);
        return;
      }

      const matches = documents
        .map((document) => {
          const haystack = `${document.title} ${document.label} ${document.summary} ${document.content}`.toLocaleLowerCase('ko-KR');
          const score = terms.reduce((total, term) => total + (haystack.includes(term) ? 1 : 0), 0);
          return { document, score };
        })
        .filter(({ score }) => score === terms.length)
        .sort((a, b) => b.score - a.score)
        .slice(0, 12);

      const count = document.createElement('p');
      count.className = 'guide-search-results__count';
      count.textContent = matches.length ? `${matches.length}개의 가이드를 찾았습니다.` : '일치하는 가이드를 찾지 못했습니다.';
      results.append(count);

      if (!matches.length) return;

      const list = document.createElement('ul');
      matches.forEach(({ document: match }) => {
        const item = document.createElement('li');
        const link = document.createElement('a');
        const label = document.createElement('span');
        const title = document.createElement('strong');
        const summary = document.createElement('small');

        link.href = match.url;
        label.className = 'ui-label';
        label.textContent = match.label;
        title.textContent = match.title;
        summary.textContent = match.summary;
        link.append(label, title, summary);
        item.append(link);
        list.append(item);
      });
      results.append(list);
    };

    form.addEventListener('submit', (event) => {
      event.preventDefault();
      const query = input.value;
      const url = new URL(window.location.href);
      if (query.trim()) url.searchParams.set('q', query.trim());
      else url.searchParams.delete('q');
      window.history.replaceState({}, '', url);
      render(query);
    });

    const initialQuery = new URL(window.location.href).searchParams.get('q') || '';
    input.value = initialQuery;
    render(initialQuery);
  })();
</script>
