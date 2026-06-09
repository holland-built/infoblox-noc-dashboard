# Security Policy

## Reporting a vulnerability

Please report security issues **privately** — do not open a public issue for a
vulnerability.

- Preferred: open a private advisory via GitHub **Security → Report a vulnerability**
  (GitHub private vulnerability reporting).
- Or email the maintainer: **barney34@gmail.com**.

Please include steps to reproduce, affected version/commit, and impact. We aim to
acknowledge reports within a few business days. This is a best-effort, single-maintainer
project.

## Scope

In scope: the Python bridge (`server.py`), the bundled dashboard (`index.html`), the
Docker packaging, and the documented configuration surface. Out of scope: the Infoblox
CSP / BloxOne platform itself (report those to Infoblox) and third-party LLM providers.

## Token handling — read this

- **Never commit `.env` or a real Infoblox token.** `.env` is gitignored; the Docker
  image ships no secrets (`.dockerignore` excludes `.env`, `.mcp.json`, and local state).
- **If a token is ever exposed, rotate it in the CSP portal**
  (<https://csp.infoblox.com> → User API Keys). Scrubbing the token from files or git
  history does **not** revoke it — only rotation in the portal does.

## Deployment warnings

- **The bridge has no client auth** and sets `Access-Control-Allow-Origin: *`. Anyone
  who can reach the port can use your Infoblox key indirectly.
- **Bind to `localhost`** (the default) unless you front it with your own auth and TLS.
  Setting `HOST=0.0.0.0` (as the Docker image does) exposes it on all interfaces — only
  do this behind a trusted boundary.
