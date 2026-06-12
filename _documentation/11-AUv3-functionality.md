---
layout: chapter
title: AUv3 기능 (AUv3 Functionality)
order: 11
---

이 기능은 iOS 전용입니다. AUv3는 Apple 기술이므로 Android OS에는 포함될 수 없고, 2025년 2월 19일 기준으로 Android에 동일한 방식의 대체 기능은 없습니다.

Koala는 AUM, GarageBand, Logic Pro, Cubasis 같은 호스트 앱 안에서 AUv3 플러그인으로 불러올 수 있습니다.

Koala는 AUv3 호스트로 전송(transport) 정보를 보내지 못합니다. 따라서 Koala의 시퀀서를 시작/정지하려면 호스트 앱에서 재생을 켜야 합니다.

Koala는 세 가지 방식으로 불러올 수 있습니다.

- AUv3 악기(AUv3 instrument)
- AUv3 이펙트(AUv3 effect)
- 멀티 버스 AUv3 플러그인(multi-bus AUv3 plugin)

참고: Koala의 스템 분리(Stem Split)와 Solo/Mute 기능은 AUv3 모드에서 사용할 수 없습니다.

> 📘 용어 설명:
> **AUv3** — iPhone이나 iPad에서 음악 앱 안에 다른 음악 앱이나 플러그인을 불러와 사용할 수 있게 해주는 형식입니다. 쉽게 말하면 iOS/iPadOS용 플러그인 규격입니다.  
> **호스트 앱(host app)** — 다른 악기나 이펙트를 안에 불러와 실행하는 앱입니다. AUM, GarageBand, Logic Pro 등이 여기에 해당합니다.  
> **AUv3 악기(AUv3 instrument)** — Koala를 다른 음악 앱 안에서 악기처럼 불러오는 방식입니다.  
> **AUv3 이펙트(AUv3 effect)** — Koala를 다른 음악 앱 안에서 이펙트처럼 불러와 입력 소리를 처리하는 방식입니다.  
> **멀티 버스(multi-bus)** — 여러 패드 소리를 여러 출력 채널로 나눠 보내는 방식입니다.
{: .term-note}

> 💡 초보자 주석:
> AUv3는 “Koala를 다른 iOS 음악 앱 안에 넣어서 쓰는 기능” 정도로 이해하면 됩니다. Koala만 단독으로 쓸 때는 몰라도 괜찮지만, iPad에서 AUM이나 GarageBand와 함께 쓰려면 AUv3 개념이 중요해집니다.
{: .beginner-note}
