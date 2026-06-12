---
title: 8.3. MIDI 설정 (MIDI Settings)
anchor: 83-midi-settings
---

<a id="83-midi-settings"></a>

## 8.3. MIDI 설정 (MIDI Settings)

중요: 패드를 trigger하려면 MIDI 노트 message를 사용해야 합니다. MIDI CC message는 Koala의 여러 control을 조작할 수 있지만 패드 trigger에는 사용할 수 없습니다.

> 💡 초보자 주석:
> MIDI mapping은 MIDI controller의 버튼, 노브, 패드를 Koala 기능에 연결하는 작업입니다. 예를 들어 외부 MIDI 패드를 Koala 패드 재생에 맞춰 배정할 수 있습니다.
{: .beginner-note}

> 📘 용어 설명:
> **MIDI 노트(MIDI note)** — 외부 컨트롤러에서 “어떤 음/패드를 눌렀는지” 보내는 메시지입니다.  
> **MIDI CC** — 노브, 슬라이더, 버튼 같은 컨트롤 값을 보내는 MIDI 메시지입니다.  
> **MIDI 클럭(MIDI clock)** — 여러 장비의 템포를 맞추기 위한 동기화 신호입니다.
{: .term-note}
