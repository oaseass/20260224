# 운명을보는회사원 — MVP

프로젝트: 운명을보는회사원 (사주+관상 결합)
목표: Flutter 앱 + Node API로 MVP 뼈대 생성

원칙:
- 사진은 분석 후 즉시 삭제(저장 금지)
- 사주와 관상은 통합 리포트로만 제공
- 결과는 오락/참고용 면책 포함
- 요구사항 없는 기능 추가 금지

구성:
- flutter-app/: Flutter 클라이언트
- backend/: Node + Express (TypeScript) API

실행(Windows 개발용):
1. 백엔드
   - Node.js(>=16) 설치
   - backend 폴더에서 `npm install`
   - `npm run dev`으로 서버 실행 (기본 포트 4000)

2. Flutter 앱
   - Flutter SDK 설치
   - flutter-app 폴더에서 `flutter pub get`
   - 에뮬레이터 또는 Chrome에서 `flutter run -d chrome`

3. 간단 실행 (run_dev.bat): 백엔드와 Flutter(Chrome) 개발 모드 실행 스크립트 제공

API:
- POST /api/analyze — 분석 엔드포인트 (더미 응답). 스키마 유효성 실패 시 400 반환.

주의: 이 저장소는 MVP 뼈대입니다. 실제 AI 분석 모듈은 추후 통합됩니다.
