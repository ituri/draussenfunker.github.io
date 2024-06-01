#!/bin/bash
echo "running image optimization"
npx sharp-cli resize 800 --withoutEnlargement true --optimise true --progressive true --withMetadata false --input $(find ./docs  \( -name cache -prune \) -o -name '*' -type f -exec file {} \; | awk -F: '{ if ($2 ~/[Ii]mage|EPS/) print $1}') --output "{dir}/{base}"