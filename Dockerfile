FROM node:18-alpine AS builder
WORKDIR /usr/src/app
COPY backend/package*.json ./backend/
WORKDIR /usr/src/app/backend
RUN npm ci
COPY backend/ .
RUN npm run build

FROM node:18-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/backend/dist ./dist
COPY backend/package*.json ./
RUN npm ci --production
ENV PORT=4000
EXPOSE 4000
CMD ["node","dist/index.js"]
