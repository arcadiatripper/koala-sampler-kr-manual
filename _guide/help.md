---
title: FAQ — 공식 도움말 한국어판
description: Koala Sampler 공식 HELP에서 한국어 사용자에게 필요한 63개 문제 해결 질문과 답변을 분류해 안내합니다.
ui_label: FAQ
reading_time: 약 25분
level: 문제 해결
summary: 설치, 결제, 오디오, MIDI와 플랫폼별 문제의 해결 방법을 한국어로 읽고 공식 원문도 바로 확인하세요.
verified_date: 2026-07-24
official_source: https://www.koalasampler.com/help/
previous_url: /guide/glossary/
previous_title: 초보자 용어집
next_url: /guide/how-it-was-made/
next_title: 부록 — Koala는 어떻게 만들어졌나
---

> **⚠️ 앱을 삭제하기 전에 반드시 곡을 백업하세요.**
>
> Koala를 삭제하면 기기에 저장된 곡도 함께 지워질 수 있습니다. 문제 해결을 위해 재설치하기 전에 중요한 곡을 `.koala` 파일 등으로 내보내 두세요.
{: .guide-note .guide-note--critical }

> **공식 HELP에서 한국어 사용자에게 필요한 63개 항목을 정리했습니다.**
>
> 질문을 누르면 답변이 펼쳐집니다. 버튼 이름과 경로는 실제 앱에서 찾기 쉽도록 영어 표기를 남겼습니다. 앱과 스토어 정책은 바뀔 수 있으므로 각 답변 아래의 **공식 답변**도 함께 확인해 주세요.
{: .guide-note .guide-note--start }

## 먼저 어디를 봐야 하나요?

- 사용법을 처음부터 배우려면 [공식 LEARNING](https://www.koalasampler.com/learning/)을 확인하세요.
- 전체 기능 설명은 [Koala 공식 매뉴얼](https://manual.koalasampler.com/)에서 찾을 수 있습니다.
- 아래 방법으로 해결되지 않으면 [공식 CONTACT](https://www.koalasampler.com/contact/)로 문의하세요.

## Android

<details class="help-answer" markdown="1">
<summary>소리가 끊기거나 지직거립니다.</summary>

`Settings`에서 `OpenSL`을 켜거나 꺼 보세요. 절전 모드·야간 모드와 다른 앱의 EQ, 컴프레서, 항상 듣는 음성 비서를 끄고, 사용하지 않는 앱을 종료한 뒤 기기를 다시 시작하세요. 내부 저장 공간도 최소 1GB 정도 남겨 두는 편이 좋습니다. Koala를 삭제하면 곡이 지워질 수 있으므로 삭제로 해결하려고 하지 마세요.

[공식 답변 ↗](https://www.koalasampler.com/help/android/audio-is-crackling-dropping-out-on-my-android-phone.html)
</details>

<details class="help-answer" markdown="1">
<summary>Bluetooth MIDI 컨트롤러가 작동하지 않습니다.</summary>

Koala의 `Settings` → `MIDI` → `Bluetooth MIDI CONNECT`를 여세요. 요청되는 권한을 모두 허용하고 검색된 장치의 `CONNECT`를 누르세요. 포트가 여러 개인 장치는 페어링 요청이 여러 번 나타날 수 있으므로 모두 승인한 뒤 `Finished`를 누릅니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/bluetooth-midi-controller-isnt-working-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>APK를 개발사에서 직접 살 수 있나요?</summary>

Koala Android판은 개발사에서 APK 파일로 직접 판매하지 않으며 공식 앱스토어를 통해서만 제공합니다. 설치할 수 없다면 기기 요구 사항과 Google Play 계정·지역 상태를 확인해야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/can-i-buy-an-apk-directly-from-you.html)
</details>

<details class="help-answer" markdown="1">
<summary>Poco/Xiaomi 휴대폰에서 두 손가락보다 많이 인식되지 않습니다.</summary>

휴대폰의 전체 화면 제스처나 세 손가락 스크린샷 기능이 여러 손가락 입력을 먼저 가져갈 수 있습니다. 시스템 설정에서 해당 제스처를 끄거나 `Game Turbo`에서 Koala의 제스처 제한을 해제하세요. 메뉴 이름은 MIUI/HyperOS 버전에 따라 다를 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/i-cant-use-more-than-2-fingers-on-my-poco-xiaomi-phone.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 업데이트하기 전에 무엇을 알아야 하나요?</summary>

업데이트를 위해 Koala를 삭제하지 마세요. Android에서 앱을 삭제하면 Koala 안의 곡도 함께 지워질 수 있습니다. Google Play의 Koala 페이지에서 `UPDATE`를 눌러 업데이트하고, 먼저 중요한 곡을 외부 파일로 백업하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/android/important-note-about-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala가 Android 기기에 설치되지 않습니다.</summary>

Koala는 Android 8.1 이상과 낮은 지연 시간의 오디오 기능을 지원하는 기기가 필요합니다. 구매한 Google 계정과 현재 Play Store 계정·국가가 같은지 확인하고, Play Store 캐시를 지운 뒤 재부팅하거나 다른 네트워크를 사용해 보세요. 스토어가 기기를 지원하지 않는다고 표시하면 Google Play 지원팀에 문의해야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/koala-wont-install-on-my-android-device.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 마이크가 작동하지 않습니다.</summary>

시스템 설정에서 Koala의 마이크 권한을 허용하세요. 항상 마이크를 듣는 음성 비서를 끄고 Koala의 `OpenSL` 설정을 바꿔 보세요. 기존 오디오 드라이버를 사용하면 마이크 문제가 해결될 수 있지만 지연 시간이 늘어날 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/my-microphone-doesnt-work-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 곡은 어디에 저장되나요?</summary>

보통 `/Android/data/com.elf.koalasampler/files/songs`에 저장됩니다. Android 11 이상에서는 일반 파일 앱으로 이 폴더가 보이지 않을 수 있으므로 컴퓨터에 연결하거나 해당 영역을 열 수 있는 파일 관리 앱이 필요할 수 있습니다. 가장 안전한 이동 방법은 Koala에서 곡을 `.koala` 파일로 내보내는 것입니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/where-are-my-songs-stored-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android판에는 왜 Ableton Live Lite 라이선스가 없나요?</summary>

Ableton이 라이선스와 발급 시스템을 제공하는 범위가 iOS판으로 제한되어 있기 때문입니다. Koala 개발사가 Android용 Live Lite 라이선스를 별도로 발급할 수는 없습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/why-is-there-no-ableton-lite-license-with-koala-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에는 왜 플러그인이나 AUv3 지원이 없나요?</summary>

AUv3는 Apple 플랫폼의 플러그인 규격입니다. Android에는 Koala가 같은 방식으로 들어갈 수 있는 공통 오디오 플러그인 규격이 없어서 독립 실행 앱으로 제공됩니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/why-is-there-no-plugin-or-auv3-support-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 지연 시간(latency)이 너무 큽니다.</summary>

Android의 오디오와 터치 지연 시간은 제조사와 기기마다 다릅니다. Bluetooth 오디오는 구조상 지연이 크므로 유선 이어폰이나 오디오 인터페이스를 사용하세요. `OpenSL` 설정을 바꾸면 나아지는 기기도 있지만, 기기 자체의 지연은 Koala만으로 없앨 수 없습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/android/why-is-there-so-much-latency-on-my-android-device.html)
</details>

## 앱스토어 결제

> **구매 복원은 플랫폼 계정이 기준입니다.**
>
> iOS App Store와 Google Play는 서로 다른 상점입니다. 같은 플랫폼에서는 구매한 계정을 사용하고, iOS와 Android를 바꾸면 다시 구매해야 할 수 있습니다.
{: .guide-note .guide-note--term }

<details class="help-answer" markdown="1">
<summary>환불을 받을 수 있나요?</summary>

Apple 구매는 Apple의 문제 신고 페이지에서, Google Play 구매는 Google Play의 환불 절차에서 요청하세요. 공식 HELP는 Apple 30일, Google 48시간 이내 요청을 안내하지만 실제 가능 여부와 기간은 국가·결제 수단·현재 스토어 정책이 결정합니다. Google 구매가 그 기간을 지났다면 영수증과 함께 elf audio에 문의하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/can-i-get-a-refund.html)
</details>

<details class="help-answer" markdown="1">
<summary>가족 공유로 Koala를 함께 쓸 수 있나요?</summary>

Koala 앱 본체는 Apple `Family Sharing` 또는 Google `Family Library`에서 공유할 수 있습니다. 그러나 `SAMURAI`, `MIXER`, 샘플 팩 같은 인앱 구매는 가족과 공유되지 않습니다. 가족 그룹과 구매 공유가 켜져 있는지 각 스토어 계정 설정에서 확인하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/can-i-share-koala-with-my-family-using-family-sharing-ios-or-family-library-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>다른 Android 기기에서 다시 구매해야 하나요?</summary>

같은 Google 계정을 쓰는 Android 기기라면 앱 본체를 다시 구매할 필요가 없습니다. 구매한 계정으로 Play Store에 로그인하고 캐시만 지운 뒤 기기를 다시 시작해 보세요. 가족 라이브러리는 앱 본체만 공유하며 인앱 구매는 공유하지 않습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/do-i-need-to-buy-koala-again-on-another-android-device.html)
</details>

<details class="help-answer" markdown="1">
<summary>환불금이 들어오는 데 얼마나 걸리나요?</summary>

Apple 환불은 처리에 며칠이 걸릴 수 있고, Google은 환불이 승인된 뒤 보통 1~3영업일 정도가 안내됩니다. 실제 입금 시간은 스토어, 은행과 결제 수단에 따라 달라지므로 환불 상태는 구매한 스토어에서 확인하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/how-long-will-my-refund-take-to-process.html)
</details>

<details class="help-answer" markdown="1">
<summary>다른 Apple 기기에서 다시 구매해야 하나요?</summary>

같은 Apple ID를 쓰는 iPhone, iPad와 Apple Silicon Mac에서는 앱 본체를 다시 구매할 필요가 없습니다. App Store의 구매 내역과 로그인 계정을 확인하고 페이지를 새로 고치세요. 가족 공유는 앱 본체에만 적용되며 인앱 구매에는 적용되지 않습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/i-bought-koala-on-my-ios-device-do-i-need-to-buy-it-again-for-my-other-devices.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 구매했는데 설치할 수 없습니다.</summary>

Android 8.1 이상인지, 구매한 Google 계정으로 로그인했는지 확인하세요. Play Store 캐시를 지우고 기기를 다시 시작한 뒤 설치를 시도하세요. 그래도 설치할 수 없다면 Google이 정한 기기 호환성 문제일 수 있으므로 영수증을 보관하고 Google Play 지원팀에 문의하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/i-bought-koala-sampler-on-android-why-won-t-it-let-me-install-it.html)
</details>

<details class="help-answer" markdown="1">
<summary>다른 기기에서 SAMURAI·MIXER·샘플 팩이 보이지 않습니다.</summary>

먼저 같은 Apple ID 또는 Google 계정인지 확인하세요. 샘플을 선택하고 `EDIT` 화면의 `CHOKE`·`TOOLS` 주변을 보세요. `STRETCH`가 있으면 SAMURAI가 활성화된 상태입니다. 구매 화면의 `ALREADY OWN?` 또는 구매 복원 버튼을 누르고 동기화될 때까지 잠시 기다리세요. 계속 보이지 않으면 영수증을 첨부해 문의하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/i-bought-samurai-the-mixer-a-samplepack-on-my-tablet-why-isnt-it-showing-up-on-my-phone.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android에서 산 구매를 Apple 기기에서도 쓸 수 있나요?</summary>

Google Play와 Apple App Store의 구매는 서로 공유되지 않습니다. 운영체제를 바꾸면 앱 본체와 필요한 인앱 구매를 새 플랫폼에서 다시 구매해야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/i-purchased-koala-for-my-android-device-do-i-have-to-buy-it-for-my-apple-devices-or-ther-other-way-round.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala 샘플 팩은 어떤 라이선스인가요?</summary>

구매한 샘플은 개인 음악과 상업 음악 제작에 사용할 수 있습니다. 샘플 원본이나 거의 그대로인 파일을 재판매·재배포하거나 다른 샘플 팩과 제품에 넣어 판매할 수는 없습니다. 구체적인 사용 범위는 공식 라이선스 원문이 기준입니다.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/what-is-the-license-for-koala-sample-packs.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala가 제 기기에서 실행되나요?</summary>

공식 HELP는 iOS 13 이상과 iPhone 6s 이상, iPad 5세대·Air 2·Mini 4 이상 및 모든 iPad Pro를 안내합니다. Android는 Android 8.1 이상, ARM 프로세서와 Google Play가 필요합니다. 지원 범위는 바뀔 수 있으므로 구매 전에 현재 App Store 또는 Google Play의 호환성 표시를 최종 확인하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/app-store-payment/will-koala-run-on-my-device.html)
</details>

## 오디오 인터페이스

<details class="help-answer" markdown="1">
<summary>Koala에 오디오 인터페이스를 연결할 수 있나요?</summary>

별도 드라이버가 필요 없는 `class-compliant` 오디오 인터페이스와 기기에 맞는 USB 어댑터가 필요합니다. Lightning 기기는 전원 공급이 가능한 Apple USB 3 카메라 어댑터, USB-C 기기는 USB-C 어댑터, Micro-USB 기기는 OTG 어댑터를 사용하세요. Android에서 입력이 잘못 잡히면 `OpenSL`을 꺼 보세요.

[공식 답변 ↗](https://www.koalasampler.com/help/audio-interfaces/can-i-use-koala-with-an-audio-interface.html)
</details>

<details class="help-answer" markdown="1">
<summary>Bluetooth 이어폰이나 스피커에서 소리가 늦게 들립니다.</summary>

Bluetooth 오디오는 전송과 압축 과정 때문에 눈에 띄는 지연이 생깁니다. 앱 설정만으로 없앨 수 없으므로 패드를 실시간으로 연주하거나 녹음할 때는 유선 이어폰 또는 오디오 인터페이스를 사용하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/audio-interfaces/the-sound-is-delayed-with-my-bluetooth-headphones-speakers.html)
</details>

## AUv3

<details class="help-answer" markdown="1">
<summary>Koala AUv3에서 예전에 만든 곡을 어떻게 여나요?</summary>

AUv3 안에서 `LOAD`를 누르고 Koala 폴더의 `songs`를 찾으세요. `.koala` 파일은 직접 열 수 있습니다. 이전 방식의 폴더로 저장된 오래된 프로젝트는 독립 실행 Koala 앱에서 한 번 연 뒤 다시 저장하면 새 형식으로 변환할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/auv3/how-to-access-your-old-songs-in-koala-auv3.html)
</details>

<details class="help-answer" markdown="1">
<summary>AUM에서 Koala AUv3로 입력 신호가 들어오지 않습니다.</summary>

AUM의 악기 슬롯이 아니라 이펙트 슬롯에 Koala를 넣어야 합니다. 같은 채널에서 마이크나 다른 입력 소스를 Koala보다 위에 배치하세요. 악기 슬롯의 AUv3는 외부 오디오 입력을 받지 못합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/auv3/i-cant-get-input-to-koala-auv3-in-aum.html)
</details>

## 자주 생기는 문제

<details class="help-answer" markdown="1">
<summary>Koala를 최신 버전으로 어떻게 업데이트하나요?</summary>

앱을 삭제하지 말고 App Store 또는 Google Play에서 Koala 페이지를 열어 `UPDATE`를 누르세요. 스토어에 표시된 버전과 Koala의 `Settings` → `EXTRAS` 버전을 비교하세요. 업데이트가 보이지 않으면 스토어 앱과 기기를 다시 시작해 보세요.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/how-to-update-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>앱을 다시 설치했더니 곡이 사라졌습니다.</summary>

앱 삭제는 로컬 앱 데이터도 삭제하므로 백업하지 않은 곡은 복구하기 어렵습니다. Android에서 삭제할 때 `Keep app data`를 선택했거나 iCloud 등에 별도로 내보낸 경우만 남아 있을 수 있습니다. 앞으로는 중요한 곡을 `.koala` 파일로 정기적으로 백업하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/i-uninstalled-and-reinstalled-koala-where-are-my-songs.html)
</details>

<details class="help-answer" markdown="1">
<summary>Dropbox·Google Drive·iCloud를 지원하나요?</summary>

Koala의 파일 선택기에서 구름 아이콘을 누르면 기기에 연결된 Google Drive나 Dropbox 같은 위치를 이용할 수 있습니다. 운영체제 제한 때문에 해당 폴더를 Koala의 `ADD LOCATION`으로 고정할 수 없는 경우가 있습니다. iOS의 iCloud는 시스템 파일 선택기에서 바로 사용할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/is-dropbox-google-drive-icloud-supported.html)
</details>

<details class="help-answer" markdown="1">
<summary>MP3 파일이 열리지 않습니다.</summary>

일부 동영상 변환 사이트는 실제로는 M4A인 파일에 `.mp3` 확장자를 붙입니다. 파일 이름의 `.mp3`를 `.m4a`로 바꾼 뒤 다시 불러와 보세요. 다운로드한 오디오를 사용할 때는 저작권과 이용 허가도 확인해야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/koala-wont-load-my-mp3.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala에서 소리가 나지 않습니다.</summary>

기기의 미디어 음량과 오디오 출력 장치를 먼저 확인하세요. `HOLD` 상태의 패드를 해제하고 `PERFORM`의 `STUTTER`가 계속 눌린 상태인지 확인하세요. 그래도 소리가 나지 않으면 새 빈 곡에서도 같은지 확인한 뒤 기기와 Koala 버전을 적어 문의하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/no-sound-is-coming-out-of-my-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>MUTE와 SOLO가 보이지 않습니다.</summary>

`Settings` → `EXTRAS`에서 `Show mute/solo`를 켜세요. 그러면 패드나 믹서에서 해당 조작을 사용할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/where-are-the-mute-and-solo-controls.html)
</details>

<details class="help-answer" markdown="1">
<summary>이스터 에그 또는 SPLIT STEMS는 어디에 있나요?</summary>

예전에는 숨겨진 기능이었지만 현재는 일반 기능으로 제공됩니다. 공식 HELP는 iOS와 Android에서 사용할 수 있다고 안내하며, 기본 Mac·Windows판에는 제공되지 않습니다. Apple Silicon Mac에서 iOS판을 실행하는 경우에는 사용할 수 있을 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/where-is-the-easter-egg-split-stems.html)
</details>

<details class="help-answer" markdown="1">
<summary>왼쪽 채널에서 반복적인 클릭 소리가 납니다.</summary>

`Settings`에서 `Pocket Operator sync out`이 실수로 켜졌는지 확인하세요. Pocket Operator와 동기화하지 않는다면 이 옵션을 끄면 클릭 소리가 사라집니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/why-is-there-a-clicking-noise-in-the-left-channel.html)
</details>

<details class="help-answer" markdown="1">
<summary>새 기능이 제 Koala에는 보이지 않습니다.</summary>

먼저 스토어에서 업데이트하고 `Settings` → `EXTRAS`의 버전을 비교하세요. 배포가 지역별로 늦게 도착할 수 있으므로 스토어와 기기를 다시 시작해 보세요. 기능의 위치가 바뀌었거나 유료 추가 기능일 수도 있으며, 데스크톱판 업데이트는 모바일판보다 늦을 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/common-problems/why-isnt-some-new-feature-available-on-my-koala.html)
</details>

## Koala 개선에 참여하기

<details class="help-answer" markdown="1">
<summary>버그를 어떻게 신고하면 좋나요?</summary>

운영체제와 버전, 기기 이름, 연결한 장비와 다른 앱, `Settings` → `EXTRAS`에 나온 Koala 버전, 남은 저장 공간을 적어 주세요. 빈 프로젝트에서 문제를 다시 만드는 최소 단계, 예상한 결과와 실제 결과, 스크린샷이나 오류 문구를 함께 보내면 원인을 찾기 쉽습니다. 공식 문의 또는 Koala-Bugs 저장소를 이용할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/help-improve-koala/how-to-report-a-bug.html)
</details>

<details class="help-answer" markdown="1">
<summary>iOS 충돌 로그를 어떻게 보내나요?</summary>

`Settings` → `Privacy & Security` → `Analytics & Improvements`에서 분석 공유를 켜세요. 직접 보낼 때는 `Analytics Data`에서 가장 최근의 `koala-`로 시작하는 로그를 열어 공유하세요. `wakeups` 로그가 아니라 실제 충돌 로그를 골라야 하며, AUv3 문제라면 해당 호스트와 관련된 로그도 함께 보내세요.

[공식 답변 ↗](https://www.koalasampler.com/help/help-improve-koala/how-to-send-a-crash-log-on-ios.html)
</details>

<details class="help-answer" markdown="1">
<summary>Android 충돌 보고서를 어떻게 보내나요?</summary>

시스템 `About phone`에서 `Build number`를 여러 번 눌러 `Developer options`를 켜세요. 문제를 다시 만든 뒤 `Developer options`의 `Take bug report`로 보고서를 만들고 공유합니다. 기기에 따라 USB 디버깅을 먼저 켜야 할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/help-improve-koala/how-to-send-a-crash-report-on-android.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala의 MINOR 스케일이 이상하게 들립니다.</summary>

이 공식 글은 예전 Koala의 `MINOR`가 하모닉 마이너였던 시기를 설명합니다. 자연 단음계는 같은 음을 쓰는 장음계를 세 반음 아래에서 선택하는 방법도 있습니다. 이후 버전에는 자연 단음계가 추가되었으므로, 현재 설치한 앱의 스케일 이름과 버전을 기준으로 선택하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/help-improve-koala/the-minor-scale-in-koala-is-wrong.html)
</details>

## iOS

<details class="help-answer" markdown="1">
<summary>오디오나 비디오가 항상 Koala로 열리지 않게 하려면?</summary>

`Files` 앱에서 파일을 길게 누르고 `Share` 또는 `Open In`을 선택한 뒤 원하는 다른 앱을 고르세요. iOS는 파일 형식별로 최근에 선택한 앱을 기억할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/ios/how-do-i-stop-koala-being-the-default-app-for-my-audio-videos-on-ios.html)
</details>

## Mac용 Koala

<details class="help-answer" markdown="1">
<summary>macOS에서 마이크 권한을 어떻게 확인하나요?</summary>

`System Settings` 또는 `System Preferences` → `Privacy & Security` → `Microphone`에서 Koala를 켜세요. 변경한 뒤 Koala를 완전히 종료하고 다시 실행하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/koala-on-mac/how-do-i-check-mic-permissions-on-mac-koala.html)
</details>

## 사용법

<details class="help-answer" markdown="1">
<summary>현재 시퀀스가 끝난 뒤 다음 시퀀스를 재생하려면?</summary>

BPM 표시 영역을 열고 `SEQ SNAP`을 설정하세요. `OFF`는 누르는 즉시, `1 BEAT`는 다음 박자, `1 BAR`는 다음 마디, `SEQ END`는 현재 시퀀스가 끝날 때 다음 시퀀스로 바뀝니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/can-i-make-it-so-the-next-sequence-plays-after-the-current-one-is-finished.html)
</details>

<details class="help-answer" markdown="1">
<summary>긴 원샷 샘플을 중간에 멈추려면?</summary>

패드의 `LOOP`와 `ONE SHOT`을 함께 사용해 탭할 때 켜지고 다시 탭할 때 멈추도록 만들 수 있습니다. 같은 `CHOKE` 그룹에 무음 샘플을 넣어 끊거나, 재생 버튼을 두 번 눌러 시퀀서 전체를 멈추는 방법도 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/how-can-i-stop-a-long-one-shot-sample.html)
</details>

<details class="help-answer" markdown="1">
<summary>패드에서 손을 떼도 녹음을 계속하려면?</summary>

녹음 패드를 누른 채 위로 밀어 잠그세요. 또는 `Settings` → `General`에서 `Hold to record`를 끄면 한 번 탭해 녹음을 시작하고 다시 탭해 끝낼 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/how-do-i-keep-a-pad-recording-after-i-take-my-finger-off.html)
</details>

<details class="help-answer" markdown="1">
<summary>소리를 재생하지 않고 샘플만 선택하려면?</summary>

`EDIT`를 누른 상태에서 패드를 탭하세요. `EDIT`를 계속 누르고 여러 패드를 차례로 탭하면 여러 샘플을 함께 선택할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/how-do-i-select-a-sample-without-triggering-it.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala에 샘플을 몇 분까지 담을 수 있나요?</summary>

앱이 정한 고정 시간 제한보다 기기의 사용 가능한 RAM이 기준입니다. 비교적 최신 기기에서는 약 30분~1시간 분량을 담는 경우가 많습니다. Koala 메뉴의 `AVAILABLE RAM`을 확인하세요. 오디오 형식에 따라 다르지만 스테레오 샘플 약 3초가 메모리 약 1MB를 쓴다고 대략 계산할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/how-many-minutes-of-samples-can-koala-hold.html)
</details>

<details class="help-answer" markdown="1">
<summary>컴퓨터 키보드 단축키는 무엇인가요?</summary>

`1–4`, `QWER`, `ASDF`, `ZXCV`는 16개 패드, `YUIO`와 `HJKL`은 시퀀스, `Space`는 재생, `M`은 메트로놈, `0`은 녹음입니다. `Backspace`는 삭제, `Tab`·`Shift+Tab`은 화면 이동, 화살표는 뱅크 이동입니다. `N`+패드는 SOLO, `B`+패드는 MUTE, `=`는 마디 추가, `-`는 마디 제거, `_`는 시퀀스 길이 두 배, `[`·`]`는 시퀀스 뱅크 이동입니다. 전체 키 배치는 공식 답변의 그림을 확인하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/keyboard-shortcuts-in-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>CHOKE란 무엇인가요?</summary>

같은 `CHOKE` 그룹에 넣은 패드들은 하나가 재생될 때 다른 패드의 소리를 끊습니다. 열린 하이햇과 닫힌 하이햇처럼 동시에 계속 울리면 어색한 소리를 자연스럽게 연결할 때 유용합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/what-is-choke.html)
</details>

<details class="help-answer" markdown="1">
<summary>BOUNCE란 무엇인가요?</summary>

`TOOLS`의 `BOUNCE`는 ATTACK, RELEASE, TONE, PITCH, VOLUME, PAN, 타임스트레치 결과를 새 샘플에 굳혀 넣습니다. `PERFORM` 이펙트까지 포함하는 기능은 아닙니다. 새 샘플이 만들어진 뒤 관련 조절값은 초기화되므로, 굳힌 결과를 다시 조절해 여러 단계로 가공할 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/what-is-bounce.html)
</details>

<details class="help-answer" markdown="1">
<summary>Koala 사용법을 더 배울 수 있는 곳은?</summary>

[공식 LEARNING](https://www.koalasampler.com/learning/) 페이지와 [elf audio YouTube 채널](https://www.youtube.com/@elfaudio)을 이용하세요. 이 한국어 가이드는 처음 시작하는 순서와 기능별 설명을 함께 제공합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/learning/where-can-i-learn-how-to-use-koala.html)
</details>

## MIDI

<details class="help-answer" markdown="1">
<summary>Traktor F1 또는 1세대 Launchpad를 연결할 수 있나요?</summary>

이 장치들은 컴퓨터용 전용 드라이버가 필요한 구형 모델입니다. iOS와 Android는 이런 드라이버를 설치할 수 없으므로 직접 연결할 수 없습니다. 모바일에서는 별도 드라이버가 필요 없는 `class-compliant` USB MIDI 장치를 사용하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/how-can-i-get-my-traktor-f1-or-launchpad-version-1-to-work-with-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>MIDI 채널을 어떻게 설정하나요?</summary>

`Settings` → `MIDI`에서 채널을 고르세요. 직접 매핑하지 않는 기본 모드에서는 MIDI 채널과 노트 오프셋으로 패드 범위를 맞출 수 있습니다. 원하는 버튼과 노트를 직접 연결하려면 `MAP MIDI`를 사용하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/how-do-i-set-the-midi-channel.html)
</details>

<details class="help-answer" markdown="1">
<summary>MIDI 키보드나 컨트롤러로 Koala를 연주하려면?</summary>

모바일에서 드라이버가 필요 없는 `class-compliant` 장치와 올바른 USB 어댑터를 사용하세요. Android에서는 컨트롤러를 먼저 연결한 뒤 Koala를 실행하는 편이 안정적입니다. `Settings` → `MIDI`에서 입력을 확인하고 필요한 경우 `MAP MIDI`로 노트와 버튼을 연결하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/how-do-i-use-koala-with-my-midi-keyboard-controller.html)
</details>

<details class="help-answer" markdown="1">
<summary>NMSVE를 휴대폰에 연결할 수 없습니다.</summary>

NMSVE 제조사의 설명서와 지원 절차에 따라 휴대폰 연결 모드를 먼저 설정하세요. Koala는 Bluetooth MIDI를 지원하지만 elf audio는 NMSVE 제조사와 관련이 없으므로 장치 고유의 연결 문제는 제조사 지원팀에 문의해야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/i-cant-connect-my-nmsve-to-my-phone.html)
</details>

<details class="help-answer" markdown="1">
<summary>Bluetooth MIDI 컨트롤러가 작동하지 않습니다.</summary>

iOS에서는 `Settings` → `MIDI` → `Bluetooth MIDI CONNECT`에서 장치를 선택하세요. Android는 먼저 제조사 안내에 따라 시스템과 페어링한 뒤 Koala의 MIDI 설정에서 장치가 보이면 연결하세요. Bluetooth 오디오 연결과 Bluetooth MIDI 연결은 서로 다릅니다.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/my-bluetooth-midi-controller-isnt-working.html)
</details>

<details class="help-answer" markdown="1">
<summary>MIDI 컨트롤러가 Koala에서 반응하지 않습니다.</summary>

`Settings` → `MIDI`의 `Last Note`가 입력을 표시하는지 확인하세요. 아무것도 보이지 않으면 데이터 전송이 가능한 케이블인지, 장치가 class-compliant인지 확인하고 장치를 연결한 상태로 다시 시작하세요. MIDI 모니터 앱 Protokol에서는 입력되는데 Koala만 반응하지 않는다면 기기·Koala 버전과 함께 문의하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/my-midi-controller-isnt-working-with-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>컨트롤러가 한 샘플만 서로 다른 피치로 연주합니다.</summary>

`SEQUENCE` 화면의 `KEYBOARD` 모드가 켜져 있기 때문입니다. 여러 패드를 각각 연주하려면 `KEYBOARD`를 꺼서 일반 패드 모드로 돌아가세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/my-midi-controller-only-plays-one-sample-at-different-pitches.html)
</details>

<details class="help-answer" markdown="1">
<summary>MIDI 풋스위치가 작동하지 않습니다.</summary>

Koala 패드를 연주하려면 풋스위치가 MIDI CC가 아니라 MIDI Note 메시지를 보내야 합니다. 제조사 설정 앱이나 설명서에서 스위치 메시지 종류를 Note로 바꾸고, Koala의 `MAP MIDI`에서 연결하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/my-midi-footswitch-isnt-working-with-koala.html)
</details>

<details class="help-answer" markdown="1">
<summary>Pocket Operator 동기화가 작동하지 않습니다.</summary>

휴대폰 음량을 최대로 하고 Pocket Operator를 `SY-4` 모드로 설정한 뒤 올바른 오디오 케이블을 사용하세요. iOS에서는 `Reduce Loud Sounds`를 끄고, Android에서는 출력 음량을 줄이는 EQ나 음장 효과를 끄세요. Koala의 `Pocket Operator sync out`도 켜져 있어야 합니다.

[공식 답변 ↗](https://www.koalasampler.com/help/midi/pocket-operator-sync-not-working.html)
</details>

## PERFORM 화면

<details class="help-answer" markdown="1">
<summary>CUTTER·STUTTER·REVERSE 이펙트가 작동하지 않습니다.</summary>

이 이펙트들은 박자에 맞춰 움직이므로 시퀀서가 재생 중이어야 합니다. 샘플 루프만 단독으로 울리는 상태에서는 기준이 되는 시퀀스 시간이 없어 예상대로 작동하지 않을 수 있습니다. 재생 버튼을 눌러 시퀀스를 시작한 뒤 다시 사용하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/perform-section/the-cutter-stutter-reverse-effect-isnt-working.html)
</details>

<details class="help-answer" markdown="1">
<summary>GATE 이펙트가 작동하지 않습니다.</summary>

`GATE`는 잡음을 제거하는 노이즈 게이트가 아니라 시퀀스에 기록된 노트의 길이를 짧게 만드는 이펙트입니다. 시퀀스 밖에서 루프만 재생하면 효과가 없거나 이상하게 들릴 수 있습니다. 노트를 시퀀스에 녹음하고 재생한 상태에서 조절하세요.

[공식 답변 ↗](https://www.koalasampler.com/help/perform-section/the-gate-effect-isnt-working.html)
</details>

## SAMURAI 모드

<details class="help-answer" markdown="1">
<summary>SAMURAI를 설치하거나 구매하려면?</summary>

샘플을 선택하고 `EDIT` 화면의 화살표를 눌러 `SAMURAI` 구매 화면을 여세요. 여기서 구매하거나 이미 샀다면 복원할 수 있습니다. 구매 버튼과 복원 문구는 플랫폼에 따라 조금 다를 수 있습니다.

[공식 답변 ↗](https://www.koalasampler.com/help/samurai-mode/how-to-install-samurai.html)
</details>

<details class="help-answer" markdown="1">
<summary>메트로놈을 꺼도 반복적인 클릭 소리가 납니다.</summary>

메트로놈이 아니라 `Pocket Operator sync out` 신호일 가능성이 큽니다. Pocket Operator와 연결하지 않는다면 `Settings`에서 이 옵션을 끄세요.

[공식 답변 ↗](https://www.koalasampler.com/help/samurai-mode/there-is-an-annoying-clicking-sound-happening-even-if-i-have-the-metronome-off.html)
</details>

## 시퀀싱

<details class="help-answer" markdown="1">
<summary>시퀀스에서 샘플이 너무 일찍 끊깁니다.</summary>

패드의 `HOLD` 상태와 `PERFORM`의 `GATE` 값을 확인하세요. `GATE`는 시퀀스에 기록된 노트의 길이를 줄이므로 값이 강하면 샘플과 루프가 일찍 끊깁니다. GATE를 기본값으로 돌린 뒤 다시 재생해 보세요.

[공식 답변 ↗](https://www.koalasampler.com/help/sequencing/my-samples-are-cutting-off-too-early.html)
</details>

마지막 확인일: 2026년 7월 24일. 항목의 추가·수정 여부는 [Koala 공식 HELP](https://www.koalasampler.com/help/)에서 확인하세요.
