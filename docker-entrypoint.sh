#!/bin/sh
set -eu

# Build CSS once before starting Jekyll.
npm run build-css

exec bundle exec jekyll serve \
  --watch \
  --livereload \
  --livereload-port 35729 \
  --host 0.0.0.0 \
  --trace \
  --config _config_doc.yml,_config_staging.yml
