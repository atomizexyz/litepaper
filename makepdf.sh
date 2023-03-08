#!/bin/bash

# Multiline text header
read -r -d '' LATEX_HEADER << EOM
<script>
MathJax = {
	tex: {
		inlineMath: [['$', '$'], ['\\(', '\\)']],
	},
};
</script>
<script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>
EOM

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
pushd pdf
  # Add LATEX_HEADER to litepaper.md
  echo $LATEX_HEADER | cat - litepaper.md > temp && mv temp litepaper.md
  cat litepaper.md | md-to-pdf > fenix-litepaper-${version}.pdf
  mv fenix-litepaper-${version}.pdf ../
popd

# cleanup pdf folder
rm -rf pdf/