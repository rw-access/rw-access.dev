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

Navigation entries come from Hugo's `menu.main` in `config.toml`. A local
PaperMod header override displays them in a native HTML disclosure menu.

## Play

`/play/` is a Hugo page in this repository, linked from the main navigation.
The game apps keep their existing repositories and Workers, with more specific
routes at `/play/ultimate-tic-tac-toe/`, `/play/nes-rs/`, and `/play/snes-rs/`.
The catalog requires no additional Worker or subdomain. Each game Worker serves
a single `/play/<game>/` prefix and publishes only its canonical asset tree.
