#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
exec bundle exec jekyll serve --config _config.yml,_config.dev.yml --host 127.0.0.1 --port 4000
