# GitHub Automation

This directory contains GitHub-specific repository automation and configuration.

## Structure

- `.github/workflows/ci-pipeline.yml` — CI pipeline for linting, production build validation, and Docker image publishing.
- Parent `.github` directory — used for GitHub repository metadata, automation, and workflow configuration.

## Workflow behavior

The pipeline is designed to match the app's production deployment flow:

1. Install dependencies with `npm ci`.
2. Run ESLint with `npm run lint`.
3. Build the Vite app with `npm run build`.
4. Publish a Docker image to GHCR only after the validation steps succeed.

This keeps the CI checks aligned with the actual production artifact produced by the Docker build and the static files served by NGINX.
