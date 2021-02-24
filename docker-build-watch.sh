#!/usr/bin/env bash

# Stop on first error
set -e

# Start Jekyll and watch for changes
export JEKYLL_VERSION=3.8

docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --publish 4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll build --watch
