# Branch Workflow & Strategy

This repository follows a pull-request-driven workflow. Direct pushes to `main` are not allowed; use feature branches and PRs.

Branch names

- `main` — production-ready, protected.
- `development` — optional integration branch.
- `feat/<short-desc>` — new features.
- `fix/<short-desc>` — bug fixes.
- `chore/<short-desc>` — maintenance tasks.
- `docs/<short-desc>` — documentation changes.
- `refactor/<short-desc>` — refactors without behavior changes.
- `hotfix/<short-desc>` — urgent fixes directly targeting `main`.

Recommended flow (GitHub Flow)

1. Create a branch from `development`:

   ```bash
   git switch development
   git pull origin development
   git switch -c feat/short-description
   ```

2. Work locally, commit using Conventional Commits, and push:

   ```bash
   git add .
   git commit -m "feat(auth): add login button"
   git push -u origin feat/short-description
   ```

3. Open a PR to `main` and complete the PR template checklist.
4. Request reviews and wait for CI to pass. Address feedback.
5. Merge using `Squash and merge` (recommended) or `Merge commit` if preserving branch history.

Hotfixes

- Create `hotfix/<desc>` from `main`, open a PR to `main`, and merge after review and CI.

Release process (if using `development`)

1. Merge feature branches into `development`.
2. When ready to release, open a PR from `development` to `main` and run final validation.

Branch protection settings (recommended)

- Require PR reviews (1-2 reviewers).
- Require CI status checks to pass before merging.
- Disable direct pushes to protected branches.
- Optionally require signed commits and linear history.

Merge preferences

- Prefer `Squash and merge` for tidy history.
- Use `Merge commit` only when you need to preserve branch-level commits.
