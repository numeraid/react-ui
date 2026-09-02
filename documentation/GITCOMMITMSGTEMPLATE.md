# Git Commit Message Template

## Format

`<type>(<scope>): <short, imperative summary>`

### Description

Provide a concise explanation of the change.

- Describe **what** changed.
- Explain **why** the change was necessary.
- Include relevant context, motivation, or previous behavior.
- Wrap lines at approximately 72 characters.

### Breaking Changes (Optional)

BREAKING CHANGE: Describe any incompatible API changes, migration
requirements, configuration updates, or actions required by consumers.

### References (Optional)

Closes: #123
Related: #456
Refs: #789

---

## Commit Types

| Type | Description |
| -------- | ------------- |
| `feat` | A new feature |
| `fix` | A bug fix |
| `docs` | Documentation-only changes |
| `style` | Code style changes (formatting, whitespace, etc.) |
| `refactor` | Code changes that neither fix a bug nor add a feature |
| `perf` | Performance improvements |
| `test` | Adding or updating tests |
| `build` | Changes affecting the build system or dependencies |
| `ci` | Changes to CI/CD pipelines and automation |
| `chore` | General maintenance tasks |

---

## Rules

Use the imperative mood  

- "add login endpoint"
- "update Kubernetes manifests"
- "remove deprecated API"

Avoid past tense or descriptive phrases  

- "added login endpoint"
- "fixes bug"
- "changing config"

Keep the summary concise

- Prefer ≤ 50 characters

Start the summary with a lowercase letter

Do not end the summary with a period

Separate the summary from the body with a blank line

---

## Examples

### Feature

```text
feat(auth): add OAuth2 login button

Adds an OAuth2 login button to the application header and
introduces a token helper for authenticated API requests.

Closes: #12
```

### Bug Fix

```text
fix(api): handle null user responses

Prevents application crashes when the authentication service
returns an empty user object.

Related: #87
```

### Refactor

```text
refactor(kubernetes): simplify ingress configuration

Removes duplicate annotations and consolidates routing rules
to improve maintainability.
```

### Breaking Change

```text
feat(identity): replace JWT issuer configuration

Updates the identity configuration model and removes support
for legacy issuer settings.

BREAKING CHANGE: Existing deployments must update their
appsettings configuration before upgrading.
```
