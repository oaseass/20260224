Fly.io 배포 가이드 (간단)

1) Fly.io 계정 생성
   - https://fly.io 에서 계정 생성

2) Fly CLI 설치(로컬에서 수동으로)
   - mac/linux: curl -L https://fly.io/install.sh | sh
   - windows: https://fly.io/docs/hands-on/install-flyctl/

3) 앱 생성(로컬)
   - flyctl launch --name unmyeong-backend --no-deploy --region <region>

4) GitHub Actions를 사용하려면
   - 저장소 Settings > Secrets > Actions에서 FLY_API_TOKEN 이름의 secret 추가
   - token은 'flyctl auth token'으로 생성하거나 Fly 웹 콘솔에서 발급

5) 워크플로우 동작
   - main 브랜치에 푸시 시 .github/workflows/deploy.yml이 실행되어 Docker 이미지를 빌드하고 Fly에 배포합니다.

참고: 워크플로우는 flyctl 설치 스텝을 포함하며, secrets.FLY_API_TOKEN이 반드시 필요합니다.
