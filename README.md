
# Numeraid — react-ui

A lightweight React UI powered by Vite. This repository contains the frontend for the Numeraid project, built with React and Vite.

## Table of contents

- Project overview
- Quick start
- Available scripts
- Project structure
- Contributing
- License

## Project overview

This is the `react-ui` frontend for Numeraid. It uses React (hooks, modern JSX) and Vite for fast development and builds.

## Quick start

Prerequisites

- Node.js 24

Install dependencies

```bash
npm install
```

Run the development server

```bash
npm run dev
```

Open your browser at the address shown in the terminal (usually <http://localhost:5173>).

Build for production

```bash
npm run build
```

Preview a production build locally

```bash
npm run preview
```

Run lint

```bash
npm run lint
```

## Available scripts

- `dev`: Runs Vite development server.
- `build`: Bundles the app for production using Vite.
- `preview`: Serves the production build locally (Vite preview).
- `lint`: Runs ESLint across the repository.

These scripts are defined in `package.json`.

## Project structure

- `index.html` — Vite entry HTML.
- `src/` — Application source code.
  - `main.jsx` — App bootstrap and render target.
  - `App.jsx` — Root component.
  - `index.css`, `App.css` — Styles.
  - `assets/` — Static assets used by the app.
- `public/` — Public static files.
- `vite.config.js` — Vite configuration.
- `package.json` — Project metadata and scripts.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## License

This project is licensed under the terms found in [LICENSE](LICENSE).

---
