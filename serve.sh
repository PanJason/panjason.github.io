#!/usr/bin/env bash
# Serve the site locally with Ruby 3.3 (github-pages does not support Ruby 4.x).
# Extra arguments are passed through to `jekyll serve`.
set -euo pipefail

RUBY_BIN="/opt/homebrew/opt/ruby@3.3/bin"
if [ ! -x "$RUBY_BIN/ruby" ]; then
  echo "Ruby 3.3 not found. Install it with: brew install ruby@3.3" >&2
  exit 1
fi
export PATH="$RUBY_BIN:$PATH"

cd "$(dirname "$0")"
bundle config set --local path vendor/bundle >/dev/null
bundle check >/dev/null 2>&1 || bundle install
exec bundle exec jekyll serve --livereload "$@"
