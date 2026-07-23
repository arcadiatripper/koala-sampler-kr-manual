module Jekyll
  module V2GuideFilter
    PHRASE_REPLACEMENTS = [
      [/\bmain menu\b/, 'MENU'],
      [/\baudio interface\b/, '오디오 인터페이스'],
      [/\bsample rate\b/, '샘플레이트'],
      [/\bkeyboard mode\b/, '키보드 모드'],
      [/\bpiano roll\b/, '피아노롤'],
      [/\btime stretching\b/, '타임스트레치'],
      [/\blive effects\b/, '실시간 이펙트'],
      [/\bmixer effects\b/, '믹서 이펙트'],
      [/\bambient sound\b/, '앰비언트 사운드'],
      [/\bfile browser\b/, '파일 탐색기'],
      [/\boutput channels\b/, '출력 채널'],
      [/\binput source\b/, '입력 소스'],
      [/\bmelodic note\b/, '멜로디 노트'],
      [/\bresampled version\b/, '리샘플된 결과'],
      [/\bmulti-select\b/, '다중 선택'],
      [/\bduration을\b/, '길이를'],
      [/\bdrums, vocals, bass, other instruments\b/, '드럼, 보컬, 베이스, 기타 악기'],
      [/\bstem separation\b/, '스템 분리'],
      [/\bMIX tab\b/, 'MIX 탭'],
      [/\bmute\/solo\b/, 'MUTE/SOLO']
    ].freeze

    WORD_REPLACEMENTS = [
      [/\bsamples\b/, '샘플'],
      [/\bsample\b/, '샘플'],
      [/\bpads\b/, '패드'],
      [/\bpad\b/, '패드'],
      [/\bsequences\b/, '시퀀스'],
      [/\bsequence\b/, '시퀀스'],
      [/\bslots\b/, '슬롯'],
      [/\bslot\b/, '슬롯'],
      [/\beffects\b/, '이펙트'],
      [/\beffect\b/, '이펙트'],
      [/\bsettings\b/, '설정'],
      [/\bkeyboard\b/, '키보드'],
      [/\bchromatic\b/, '크로매틱'],
      [/\bscale\b/, '스케일'],
      [/\bvelocity\b/, '벨로시티'],
      [/\brhythm\b/, '리듬'],
      [/\btransition\b/, '전환'],
      [/\bparameters\b/, '설정값'],
      [/\bparameter\b/, '설정값'],
      [/\bduration\b/, '길이'],
      [/\bstretched\b/, '늘린'],
      [/\bgranular\b/, '그래뉼러'],
      [/\bsynth\b/, '신시사이저'],
      [/\bplayback\b/, '재생'],
      [/\bwaveform\b/, '파형'],
      [/\bselection\b/, '선택 영역'],
      [/\bmarker\b/, '마커'],
      [/\bdevice\b/, '기기'],
      [/\bchannel\b/, '채널'],
      [/\bsource\b/, '소스'],
      [/\bdropdown\b/, '드롭다운'],
      [/\boption\b/, '옵션'],
      [/\bbrowser\b/, '탐색기'],
      [/\bscreen\b/, '화면'],
      [/\bcontrols\b/, '컨트롤'],
      [/\bcontrol\b/, '컨트롤'],
      [/\bsignal\b/, '신호'],
      [/\bslide\b/, '밀기'],
      [/\barrow\b/, '화살표'],
      [/\bsong\b/, '곡'],
      [/\bchord\b/, '코드'],
      [/\bresample\b/, '리샘플'],
      [/\bmode\b/, '모드'],
      [/\blooping\b/, '반복 재생'],
      [/\bone-shot\b/, '원샷'],
      [/\bstripe\b/, '띠'],
      [/\btrash\b/, '삭제 영역'],
      [/\bstretch\b/, '타임스트레치'],
      [/\bchopping\b/, '자르기'],
      [/\bdrum\b/, '드럼'],
      [/\brandomization\b/, '랜덤 설정'],
      [/\bnote\b/, '노트'],
      [/\bbounce\b/, 'BOUNCE'],
      [/\baudio\b/, '오디오'],
      [/\binput\b/, '입력'],
      [/\boutput\b/, '출력'],
      [/\beditor\b/, '편집기'],
      [/\btab\b/, '탭'],
      [/\bbus\b/, '버스'],
      [/\bmixer\b/, '믹서'],
      [/\bpitch\b/, '피치'],
      [/\bvolume\b/, '볼륨'],
      [/\bloop\b/, '루프'],
      [/\bmute\b/, '음소거'],
      [/\bsolo\b/, '솔로'],
      [/\bspeed\b/, '속도'],
      [/\btempo\b/, '템포'],
      [/\bsync\b/, '동기화'],
      [/\bfeedback\b/, '피드백'],
      [/\battack\b/, '어택'],
      [/\brelease\b/, '릴리스'],
      [/\bchop\b/, '조각'],
      [/\bstem\b/, '스템'],
      [/\bdrums\b/, '드럼'],
      [/\bvocals\b/, '보컬'],
      [/\binstruments\b/, '악기']
    ].freeze

    GUIDE_LINKS = {
      '1-introduction' => 'overview',
      '2-general-overview' => 'overview',
      '3-quick-guide' => 'quick-start',
      '4-sample' => 'sample',
      '5-sequence' => 'sequence',
      '6-perform' => 'perform',
      '7-main-menu' => 'menu',
      '8-settings' => 'settings',
      '9-effects' => 'effects',
      '10-in-app-purchases' => 'purchases',
      '11-AUv3-functionality' => 'auv3',
      '12-specifications' => 'specifications'
    }.freeze

    def v2_normalize_guide(input)
      normalized = input.to_s

      baseurl = @context.registers[:site].config['baseurl'].to_s

      normalized = normalized
        .gsub(
          '📘 용어 설명:',
          '<strong class="note-heading"><span aria-hidden="true">📚</span> 용어 도움말</strong>'
        )
        .gsub(
          '💡 초보자 주석:',
          '<strong class="note-heading"><span aria-hidden="true">💡</span> 쉽게 이해하기</strong>'
        )
        .gsub(
          %r{<p>팁:\s*(.*?)</p>}m,
          '<aside class="guide-note guide-note--tip"><strong class="note-heading"><span aria-hidden="true">👍</span> 해볼 만한 방법</strong><p>\1</p></aside>'
        )
        .gsub(
          %r{<p>참고:\s*(.*?)</p>}m,
          '<aside class="guide-note"><strong class="note-heading"><span aria-hidden="true">🔎</span> 알아두기</strong><p>\1</p></aside>'
        )
        .gsub(
          '[SAMURAI]',
          '<span class="addon-badge" aria-label="SAMURAI 추가 기능 필요" title="SAMURAI 추가 기능 필요">SAMURAI</span>'
        )

      normalized = normalized.gsub(
        %r{<p><a href="(?<src>#{Regexp.escape(baseurl)}/assets/images/(?<file>[^"]+))"[^>]*><img src="\k<src>" alt="(?<alt>[^"]*)" class="img-phone"\s*/></a></p>}
      ) do
        src = Regexp.last_match[:src]
        filename = Regexp.last_match[:file]
        alt = Regexp.last_match[:alt]
        tablet_src = "#{baseurl}/assets/images/tablet/#{filename}"
        "<figure class=\"guide-shot legacy-shot\"><img src=\"#{src}\" alt=\"#{alt} — Phone 화면\" data-device-image data-phone-src=\"#{src}\" data-tablet-src=\"#{tablet_src}\" data-phone-alt=\"#{alt} — Phone 화면\" data-tablet-alt=\"#{alt} — Tablet 화면\" loading=\"lazy\" decoding=\"async\"></figure>"
      end

      GUIDE_LINKS.each do |legacy_path, guide_path|
        normalized = normalized.gsub(
          %r{href="\.\./#{Regexp.escape(legacy_path)}(?<anchor>#[^"]*)?"},
          "href=\"#{baseurl}/guide/#{guide_path}/\\k<anchor>\""
        )
      end

      normalized
    end
  end
end

Liquid::Template.register_filter(Jekyll::V2GuideFilter)
