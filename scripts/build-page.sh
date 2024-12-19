#!/bin/bash

set -euo pipefail

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided"
    exit 1
fi

# The version should be the first argument.
version="$1"

echo "Generating HTML page for dprint-plugin-markdown-$version.wasm"

page="<!doctype html>
<html lang=\"en-US\">

<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>dprint-plugin-markdown fork v$version</title>
  <link rel=\"stylesheet\" href=\"css/style.css\">
  <meta name=\"description\" content=\"Fork of dprint-plugin-markdown until it gets merged. Currently v$version\">
</head>

<body>

  <!-- Add your site or application content here -->
  <p><a href=\"./dprint-plugin-markdown-$version.wasm\">dprint-plugin-markdown v$version</a></p>

</body>

</html>"

mkdir -p ./dist
echo "$page" > ./dist/index.html
