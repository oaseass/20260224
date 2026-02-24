Backend (Node + Express) — 개발

설치
1. Node.js 설치
2. backend 디렉터리에서 `npm install`

개발 실행
- `npm run dev` — ts-node-dev로 개발서버 실행

엔드포인트
- POST /api/analyze
  - Body: JSON { birthdate, birthtime, calendar?, leapMonth? }
  - File: photo optional (multipart/form-data) — 서버는 메모리에서만 처리하고 절대 디스크에 저장하지 않음
