#!/usr/bin/env bash
set -euo pipefail

git submodule update --init --recursive
hugo --gc --minify --baseURL "${HUGO_BASE_URL:-https://rw-access.dev/}"
