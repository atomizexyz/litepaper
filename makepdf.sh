#!/bin/bash

# Create pdf folder if it doesn't exist
if [ ! -d "pdf" ]; then
  mkdir pdf
fi

# Create symbolic link to img folder if it doesn't exist
if [ ! -d "pdf/img" ]; then
  pushd pdf
  ln -s ../img img
  popd
fi

# Check if mmdc is installed otherwise install it
if ! [ -x "$(command -v mmdc)" ]; then
  echo 'Error: mmdc is not installed.' >&2
  echo 'Installing mmdc...'
  npm install -g @mermaid-js/mermaid-cli
fi

# Check if md-to-pdf is installed otherwise install it
if ! [ -x "$(command -v md-to-pdf)" ]; then
  echo 'Error: md-to-pdf is not installed.' >&2
  echo 'Installing md-to-pdf...'
  npm install -g md-to-pdf
fi

# Generate mermaid files from README.md
mmdc -i README.md -o pdf/litepaper.md

# Get current git tag version as string
version=`git describe --tags --abbrev=0`

# Generate pdf from litepaper with version
md-to-pdf pdf/litepaper.md fenix-litepaper-${version}.pdf

# cleanup pdf folder
rm -rf pdf/