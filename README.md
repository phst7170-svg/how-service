# HOW_Service

섬김팀 경배와 찬양 도구 모음 — https://phst7170-svg.github.io/how-service/

| 경로 | 도구 | 원본 |
|---|---|---|
| `/` | 홈 | `index.html` |
| `/conti/` | 콘티 레이아웃 | `conti/src/index.html` → `conti/build.ps1` → `conti/index.html` |
| `/timecheck/` | 타임체크 | `Desktop\HOW_Service_app` 에서 `build_netlify.ps1` → `sync_timecheck.ps1` 로 `timecheck\` 에 복사 |

작업 내용·악보 사진은 각자 브라우저에만 저장됩니다.
수정 후: 빌드 → `git commit` → `git push` (1~2분 뒤 반영). 타임체크를 바꾸면 `sw.js` 의 CACHE 숫자를 올려야 설치된 폰에도 반영됩니다.
