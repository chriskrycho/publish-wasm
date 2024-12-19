#!/bin/bash

set -euo pipefail

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided"
    exit 1
fi

# The version should be the first argument.
version="$1"

echo "Generating HTML page for publish-wasm-$version.wasm"

page="<!doctype html>
<html lang=\"en-US\">

<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>publish-wasm fork v$version</title>
  <link rel=\"stylesheet\" href=\"css/style.css\">
  <meta name=\"description\" content=\"Fork of publish-wasm until it gets merged. Currently v$version\">
</head>

<body>

  <!-- Add your site or application content here -->
  <p><a href=\"./publish-wasm-$version.wasm\">publish-wasm v$version</a></p>

</body>

</html>"

mkdir -p ./dist
echo "$page" > ./dist/index.html
