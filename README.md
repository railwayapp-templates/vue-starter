---
title: Vue 3 + TypeScript + Vite + Caddy
description: The default Vue + Vite TS starter, utilizing `Caddy` to serve the built single page app
tags:
  - Node
  - Vue 3
  - Vite
  - TypeScript
  - Caddy
---

# Vue 3 + TypeScript + Vite + Caddy

This template should help get you started developing with Vue and TypeScript in Vite. The template uses Vue 3 With TypeScript.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/Qh0OAU?referralCode=ySCnWl)

## ✨ Features

- Vue 3 + TypeScript + Vite + Caddy
- Caddy v2

## 💁‍♀️ Local Development

- Install required dependencies with `npm install`
- Start the server for local development `npm run dev`
- Navigate to `http://localhost:5173/. The application will automatically reload if you change any of the source files.

## ❓ Why use `Caddy` when deploying to Railway?

Caddy is a powerful, enterprise-ready, open source web server, and therefore Caddy is far better suited to serve websites than Vite is, using Caddy will result in much less memory and cpu usage compared to serving with Vite (much lower running costs too)

To see how this is achieved with nixpacks, check out the fully documented nixpacks.toml file in this repository

The configuration for Caddy is called a Caddyfile, and you can edit that file to further suite your needs, by default it comes configured to serve a single page app for Vue 3, and to also gzip the responses

**Relevant Caddy documentation:**

- [The Caddyfile](https://caddyserver.com/docs/caddyfile)
- [Caddyfile Directives](https://caddyserver.com/docs/caddyfile/directives)
- [root](https://caddyserver.com/docs/caddyfile/directives/root)
- [encode](https://caddyserver.com/docs/caddyfile/directives/encode)
- [file_server](https://caddyserver.com/docs/caddyfile/directives/file_server)
- [try_files](https://caddyserver.com/docs/caddyfile/directives/try_files)