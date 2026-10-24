FROM node:18-alpine AS build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM ghcr.io/static-web-server/static-web-server:2.44.1 AS runtime

WORKDIR /app
COPY --from=build /app/dist ./dist
COPY sws.toml /etc/sws.toml
ENV SERVER_CONFIG_FILE=/etc/sws.toml
USER 65532:65532
EXPOSE 3000
