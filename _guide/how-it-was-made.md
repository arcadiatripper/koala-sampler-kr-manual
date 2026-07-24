---
title: 부록 — Koala는 어떻게 만들어졌나
description: Koala Sampler의 제작 철학, J Dilla와 SP-303에서 받은 영감, 초기 앱과 디자인 및 개발 과정을 한국어로 요약한 부록입니다.
ui_label: APPENDIX
reading_time: 약 7분
level: 제작 이야기
summary: Koala의 단순한 화면과 리샘플 중심 작업 방식이 어떤 생각과 시행착오에서 나왔는지 살펴봅니다.
verified_date: 2026-07-24
official_source: https://www.koalasampler.com/how-it-was-made/
previous_url: /guide/help/
previous_title: 공식 도움말 찾아보기
next_url: /guide/disclaimer/
next_title: 안내와 면책
---

> **공식 제작기를 바탕으로 정리한 한국어 요약입니다.**
>
> 원문의 디자인 스케치, 초기 화면과 개발 영상은 [HOW IT WAS MADE](https://www.koalasampler.com/how-it-was-made/)에서 함께 볼 수 있습니다.
{: .guide-note .guide-note--start }

## 지우개보다 유성 매직에 가까운 도구

Koala는 세부 값을 끝없이 고치느라 작업 흐름을 잃지 않도록 만든 샘플링 워크스테이션입니다. 정교한 편집을 반복하는 도구보다는, 되돌리기를 고민하지 않고 아이디어를 빠르게 이어 가는 악기를 목표로 했습니다. 제작자는 이를 연필보다 유성 매직으로 그림을 그리는 경험에 비유합니다.

이 철학은 음악의 흐름을 멈추지 않는 루퍼나 모듈러 신시사이저와도 닿아 있습니다. 먼저 소리를 만들고, 결과가 마음에 들면 다음 단계로 계속 나아가는 방식입니다.

## 핵심은 리샘플

기능을 단순하게 유지하면서도 평범한 재생과 이펙트만으로 만들기 어려운 소리를 얻기 위해 `RESAMPLE`이 핵심 기능이 되었습니다.

리샘플은 Koala에서 들리는 결과를 다시 입력으로 녹음하는 방식입니다. 여러 샘플과 이펙트를 하나의 새 샘플로 굳힌 뒤, 그 결과를 다시 편집하거나 연주하면서 소리를 단계적으로 바꿀 수 있습니다. 입력 모니터링을 이용한 피드백도 실험적인 소리 재료가 될 수 있습니다.

## J Dilla와 BOSS SP-303

제작자는 J Dilla가 서로 멀리 떨어진 음악에서 가져온 몇 개의 샘플을 골라 하나의 곡처럼 엮어 내는 방식에 큰 영향을 받았습니다.

J Dilla의 마지막 앨범 *Donuts*가 병원에서 BOSS SP-303과 레코드만으로 대부분 만들어졌다는 이야기도 중요한 계기가 되었습니다. 이 이야기는 사실관계에 논쟁이 있지만, SP-303의 단순한 전면 패널과 제약이 창작을 밀어붙이는 모습 자체가 Koala의 방향에 영감을 주었습니다.

SP-303처럼 Koala도 자기 출력을 다시 샘플링할 수 있고, 입력에 이펙트를 바로 적용할 수 있습니다. 이펙트를 건 채 녹음하면 결과가 샘플에 포함되기 때문에, 선택을 되돌리기보다 그 소리를 다음 재료로 삼게 됩니다.

<figure class="appendix-image">
  <img src="{{ '/assets/images/how-it-was-made/sp-303.jpg' | relative_url }}" alt="BOSS SP-303 샘플러의 전면 모습">
  <figcaption>Koala의 단순한 조작 방식과 리샘플 흐름에 영감을 준 BOSS SP-303.</figcaption>
</figure>

## Koala 이전의 실험

제작자는 Koala 전에도 녹음한 소리로 최대한 빨리 음악을 만드는 샘플러를 여러 차례 만들었습니다.

### Sampletoy

2010년에 만든 Sampletoy는 오디오 샘플 하나를 장난감처럼 만지고, 원래 모습을 알아보기 어려울 정도까지 변화시키는 즐거움에 초점을 맞춘 앱이었습니다. 그래뉼러 합성에 가까운 영역까지 샘플을 변형할 수 있었습니다.

<figure class="appendix-image">
  <img src="{{ '/assets/images/how-it-was-made/sampletoy-472.jpg' | relative_url }}" alt="Koala 이전에 만든 Sampletoy 앱 화면">
  <figcaption>2010년에 만든 Sampletoy의 화면.</figcaption>
</figure>

### Capture

2009년에 만든 Capture는 녹음 과정을 지나치게 완벽하게 만들려 하지 않고, 거칠지만 바로 연주할 수 있는 샘플 프리셋을 쉽게 만드는 “민주적인 샘플러”를 목표로 했습니다. 이 접근 역시 Koala의 빠른 녹음과 즉시 연주하는 흐름으로 이어졌습니다.

<figure class="appendix-image">
  <img src="{{ '/assets/images/how-it-was-made/capture.gif' | relative_url }}" alt="Capture 앱에서 샘플을 녹음하고 연주하는 모습">
  <figcaption>2009년에 만든 Capture의 작동 모습.</figcaption>
</figure>

## 인터페이스 디자인

Koala의 화면은 처음부터 완성된 것이 아니라 여러 번의 배치와 그래픽 실험을 거쳐 다듬어졌습니다. UI 그래픽은 Sketch로 제작되었고, 각 요소를 SVG로 바로 내보낼 수 있는 작업 방식이 활용되었습니다.

공식 제작기에는 초기 화면 구성, 아이콘과 색상, 패드 배치가 현재 모습으로 변해 가는 디자인 스케치가 실려 있습니다.

<div class="appendix-gallery">
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-1.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 1">
    <figcaption>초기 인터페이스 실험 1</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-2.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 2">
    <figcaption>초기 인터페이스 실험 2</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-3.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 3">
    <figcaption>초기 인터페이스 실험 3</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-4.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 4">
    <figcaption>초기 인터페이스 실험 4</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-5.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 5">
    <figcaption>초기 인터페이스 실험 5</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-6.png' | relative_url }}" alt="Koala 초기 인터페이스 디자인 6">
    <figcaption>초기 인터페이스 실험 6</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/how-it-was-made/design-7.png' | relative_url }}" alt="현재 형태에 가까워진 Koala 인터페이스 디자인">
    <figcaption>현재 모습에 가까워진 디자인</figcaption>
  </figure>
</div>

## 베타 테스트와 소프트웨어 개발

여러 음악가와 개발자가 베타 테스트에 참여해 실제 음악 작업에서 생기는 문제를 확인했습니다. 공식 페이지에는 Andrew Beaton, Annette Jezierska, Arthur Carabott, Beardyman, Chris Cairns, Chris Curtis, David Abravanel, Felix Faire, Jordan Rudess, Karl Sadler, Lukas Girling, Marcos Alonso, MJ Cole, Pete Fraser가 소개되어 있습니다.

개발 중에는 Koala를 실행할 때마다 화면을 자동으로 캡처해 인터페이스가 만들어지는 과정을 짧은 영상으로 남겼습니다.

앱은 macOS와 iOS에서 동작하는 자체 C++ 프레임워크로 개발되었습니다. 코드를 조금 바꾼 뒤 전체 프로젝트를 매번 다시 빌드하지 않고 결과를 바로 확인하는 라이브 코딩 방식도 사용했습니다. 특히 DSP를 만들 때는 코드를 수정하면서 소리를 계속 들어야 하므로 이런 빠른 반복이 도움이 되었습니다.

Koala의 단순함은 기능이 부족해서 생긴 결과가 아니라, 사용자가 판단을 미루지 않고 소리를 다음 단계로 이어 가게 하려는 의도적인 디자인입니다.

원문과 시각 자료: [Koala Sampler — HOW IT WAS MADE](https://www.koalasampler.com/how-it-was-made/). 이 페이지의 사진과 디자인 이미지는 공식 제작기에서 가져왔으며 저작권은 elf audio에 있습니다.
