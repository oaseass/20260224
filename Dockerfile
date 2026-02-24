--- a/Dockerfile
+++ b/Dockerfile
@@
-FROM node:20-alpine
-WORKDIR /app
-COPY . .
-RUN npm install
-CMD ["npm","start"]
+FROM node:20-alpine
+WORKDIR /app
+
+# backend만 설치/빌드/실행 (루트에 package.json이 없기 때문)
+COPY backend/package*.json ./
+RUN npm ci
+
+COPY backend/ ./
+RUN npm run build
+
+ENV NODE_ENV=production
+CMD ["npm","start"]