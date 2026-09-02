# Husky hooks for Numeraid

This document describes the local Git hooks installed with Husky for this repository, how to install and test them, and troubleshooting notes.

## Purpose

- Enforce code quality before commits and pushes
- Validate commit messages follow Conventional Commits
- Prevent direct pushes to `main`

## Hooks (what runs)

- `pre-commit` — runs in order:
  - `npm run lint` (project lint)
  - `npm run test --if-present` (runs tests if a `test` script exists)
  - `CI=true npm run build` (production-like build)
  - `npx lint-staged --quiet` (format/fix staged files)

- `commit-msg` — runs `commitlint` to enforce Conventional Commits (uses `commitlint` config in `package.json`).

- `pre-push` — blocks pushes when your local branch is `main`. Create a feature branch and open a PR instead.

## Install / setup

1. Install dev dependencies (already in `package.json`):

```bash
npm install --save-dev husky lint-staged @commitlint/cli @commitlint/config-conventional
```

1. Ensure Husky hooks are installed (the project has a `prepare` script):

```bash
npm run prepare
```

## Troubleshooting

- Husky CLI prints a deprecation notice for the install command; this is informational. The repository uses the `prepare` script which is correct.
- If you see `LF will be replaced by CRLF` warnings for files under `.husky/`, add a `.gitattributes` rule:

```text
.husky/* text eol=lf
```

- If `commit` fails with a GPG error (`gpg: signing failed: Operation cancelled`), either:
  - Use `--no-gpg-sign` for the commit, or
  - Fix your GPG setup on Windows (install Gpg4win / Kleopatra, ensure `gpg` on PATH, configure `git config --global gpg.program gpg`, unlock key/passphrase or configure pinentry).

## Notes and links

- The hooks enforce the repository rules in `documentation/CONTRIBUTING.md` and the PR checklist in `documentation/PULL_REQUEST_TEMPLATE.md`.
- Hook sources:
  - `/.husky/pre-commit`
  - `/.husky/commit-msg`
  - `/.husky/pre-push`
