---
title: Vue 3 + TypeScript + Vite + static-web-server
description: The default Vue + Vite TS starter, using static-web-server to serve the built single page app
tags:
  - Node
  - Vue 3
  - Vite
  - TypeScript
  - static-web-server
---

# Vue 3 + TypeScript + Vite + static-web-server

A Vue 3 and TypeScript starter built with Vite.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/Qh0OAU?referralCode=ySCnWl)

## Local development

```sh
npm ci
npm run dev
```

Open `http://localhost:5173/`. The application reloads as source files change.

## Docker deployment

```sh
docker build -t vue-starter .
docker run --rm -p 3000:3000 vue-starter
```

The image builds the app with Vite, then serves `dist/` with the official
static-web-server 2.44.1 scratch image. The runtime runs as UID/GID 65532 and
listens on port 3000, preserving the existing Railway service and proxy port.
Railway detects the Dockerfile. Configure the platform's target port as 3000;
`PORT` does not override the listener defined in `sws.toml`.

`GET /health` and `HEAD /health` return 200. `sws.toml` configures compression,
client-side routes, and cache headers. Hashed `/assets/` files are cached for a
year; the entry page and other files are revalidated. Missing assets return 404.

The static server handles termination signals directly. Node and npm are only
used during the build; browser JavaScript runs in the browser.
