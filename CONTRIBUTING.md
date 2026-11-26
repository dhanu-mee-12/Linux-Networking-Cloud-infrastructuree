# Contributing

Contributions are welcome. Keep examples provider-neutral where possible and make commands safe for a fresh Ubuntu installation.

## Guidelines

- Never include real IP addresses that identify private infrastructure, credentials, private keys, or tokens.
- Explain what a privileged command changes before showing it.
- Prefer idempotent scripts and fail-fast shell settings.
- Test shell scripts with `bash -n` and test Markdown links where practical.
- Use placeholders such as `<server-ip>` and `<your-username>`.

## Suggested workflow

```bash
git checkout -b docs/improve-networking-lab
# make a focused change
git diff --check
git status
git commit -m "docs: improve networking lab"
git push -u origin docs/improve-networking-lab
```
