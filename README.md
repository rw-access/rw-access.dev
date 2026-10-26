# [rw-access.dev](https://rw-access.dev)

## Cloudflare Workers Builds

This repository builds the portfolio Worker at the site root. In the Worker's
Cloudflare **Settings → Builds**, use:

- Build command: `bash scripts/build-cloudflare.sh`
- Deploy command: `npx --yes wrangler@4.152.0 deploy`
- Build variable: `HUGO_VERSION=0.137.1`

The build initializes the pinned Hugo theme submodules and writes the site to
`public/`. The Wrangler config routes `rw-access.dev/*` here; more specific
Workers routes serve the projects hosted under that domain.
