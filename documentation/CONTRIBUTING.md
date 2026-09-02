# Contributing to Numeraid

Thank you for contributing! This document explains how to contribute code, open issues, and submit pull requests.

1. Fork the repository and create a branch using the naming conventions in [`BRANCHWORKFLOW.md`](./BRANCHWORKFLOW.md).

2. Commit messages
   - Use Conventional Commits: `<type>(scope?): short description`.
   - Common types: `feat`, `fix`, `chore`, `docs`, `refactor`, `test`, `ci`, `perf`, `style`.
   - See `GITCOMMITMSGTEMPLATE.md` for an example template.

3. Coding standards
   - Run linters and formatters before opening a PR: `npm run lint`.
   - Include tests for new behavior when practical.

4. Branching and Pull Requests
   - Branch from `development`: `git checkout -b feat/short-desc`.
   - Open a PR to the target branch and fill the PR template.
   - Request at least one reviewer and ensure CI passes before merging.

5. Local verification
   - Install: `npm ci`
   - Development server: `npm run dev`
   - Build: `npm run build`
   - Lint: `npm run lint`

6. Reporting issues
   - Use the repository Issues tab and provide a minimal reproduction, steps, and expected vs actual behavior.

7. Code of conduct
   - Be respectful and constructive. Treat others as you'd like to be treated.
