# Koala Sampler 매뉴얼 비공식 한국어 번역 초안

이 프로젝트는 [Koala Sampler 공식 매뉴얼](https://manual.koalasampler.com/)을 바탕으로 만든 비공식 한국어 번역 초안입니다. 원본 문서 구조는 [elf-audio/koala-documentation](https://github.com/elf-audio/koala-documentation)의 Jekyll 사이트를 최대한 유지했습니다.

이 저장소는 공식 Koala Sampler/Elf Audio 프로젝트가 아니며, 공식 제휴나 승인을 주장하지 않습니다. 원문 저작권과 공식 정보는 Elf Audio / Koala Sampler 측에 있습니다. 최신 정보는 반드시 공식 매뉴얼과 앱 안의 안내를 확인하세요.

## 이 프로젝트의 목적

- 한국어 초보자가 Koala Sampler의 메뉴와 기능을 천천히 확인할 수 있게 합니다.
- AI가 첫 번역 초안을 만들었고, 이후 사람 검수자는 주로 `.md` 파일의 한국어 본문, 용어 설명, 초보자 주석을 고치면 됩니다.

## 로컬에서 미리 보기

Ruby와 Bundler가 설치되어 있다면 아래 순서로 실행합니다.

```shell
bundle install
bundle exec jekyll serve
```

브라우저에서 표시되는 로컬 주소를 열면 사이트를 볼 수 있습니다. 보통 `http://127.0.0.1:4000` 또는 `http://localhost:4000`입니다.

정적 파일로 빌드하려면 아래 명령을 사용합니다.

```shell
bundle exec jekyll build
```

빌드 결과는 `_site/` 폴더에 만들어집니다.

### 빌드 확인 메모

이 저장소의 `.ruby-version`은 Ruby 3.1.4입니다. 로컬 환경에서는 `.ruby-version`에 맞춰 Ruby를 준비한 뒤 `bundle install`, `bundle exec jekyll serve`, `bundle exec jekyll build` 순서로 확인하는 것을 권장합니다.

로컬에서 `bundle exec jekyll build`가 성공하면 `_site/` 폴더가 만들어지고, 그 결과물을 배포할 수 있습니다.

루트 폴더의 zip 압축 파일은 사이트에 필요한 파일이 아니므로 Jekyll 빌드 대상에서 제외했습니다. 일부 Ruby/Jekyll 환경에서는 한글 파일명이 static file 처리 중 encoding 오류를 만들 수 있습니다.

## 글을 수정하는 방법

일반적으로 수정할 부분은 `.md` 파일의 한국어 본문입니다. 문장 앞에 `>`가 붙은 부분은 용어 설명 또는 초보자 주석 박스입니다. 이 부분도 그냥 글처럼 수정하면 됩니다.

주로 편집할 곳은 다음과 같습니다.

- `_documentation/*.md`
- `_documentation/chapters/**/*.md`
- `index.md`
- `README.md`

각 `.md` 파일 맨 위의 `---` 사이에 있는 부분은 front matter입니다. 예를 들면 `layout`, `title`, `order`, `anchor` 같은 항목입니다. 이 부분은 사이트 구조와 목차에 영향을 주므로 가볍게 고치지 않는 것이 좋습니다.

## 안전하게 고칠 수 있는 부분

- 한국어 문장
- 오타와 띄어쓰기
- 초보자 주석 문장
- 용어 설명
- 사람이 보기 어색한 번역 표현

## 조심해서 고칠 부분

아래 항목은 링크, 목차, 이미지 표시가 깨질 수 있으니 필요할 때만 신중하게 수정하세요.

- front matter의 `layout`, `order`, `permalink`, `anchor`
- 이미지 태그의 `link="..."` 경로
- 내부 링크의 `../4-sample#48-mix-and-eq` 같은 주소
- `_layouts`, `_includes`, `_plugins` 폴더의 파일
- `Gemfile`, `_config.yml`

## GitHub Pages 배포

이 사이트는 정적 Jekyll 사이트입니다. GitHub Pages로 배포하려면 일반적으로 다음 방식 중 하나를 사용합니다.

1. GitHub 저장소에 이 프로젝트를 올립니다.
2. 저장소 Settings에서 Pages 메뉴를 엽니다.
3. Source를 GitHub Actions 또는 branch 배포로 설정합니다.
4. Jekyll 빌드가 실행되도록 설정합니다.

GitHub Pages에서 플러그인 제한이 생긴다면 GitHub Actions로 `bundle exec jekyll build`를 실행하고 `_site/` 결과물을 배포하는 방식을 권장합니다.

## Vercel 배포 메모

Vercel에서도 정적 사이트로 배포할 수 있습니다.

- Framework Preset: Other
- Build Command: `bundle exec jekyll build`
- Output Directory: `_site`
- Install Command: `bundle install`

Vercel 환경에 Ruby/Bundler 설정이 필요할 수 있습니다. 문제가 생기면 먼저 로컬에서 `bundle exec jekyll build`가 성공하는지 확인하세요.

## 현재 번역 검수 우선순위

다음 항목은 human reviewer가 특히 확인하면 좋습니다.

- Samurai 유료 기능: Timestretch, Piano Roll, Autochop, 3 Band EQ, Quokka Synth, MIDI Out의 최신 앱 지원 여부
- Mixer 유료 기능: bus/channel/effect slot 설명과 실제 앱 화면 용어 일치 여부
- 플랫폼별 기능: iOS 전용 AUv3, Ableton Link, Inter-App Audio, Android 지원 차이
- Export option: stems, Ableton Live export 설명과 현재 앱 버전 일치 여부
- Effects 장: effect 이름과 parameter 범위가 최신 앱과 같은지 여부

## 원본 출처와 라이선스

원본 문서 저장소는 MIT License를 사용합니다. 이 번역 초안은 원본 출처, 공식 링크, 라이선스 파일을 보존합니다. 공식 최신 정보는 아래 링크를 확인하세요.

- 공식 매뉴얼: <https://manual.koalasampler.com/>
- 공식 문서 저장소: <https://github.com/elf-audio/koala-documentation>
- Samurai 공식 소개: <https://www.koalasampler.com/samurai/>
