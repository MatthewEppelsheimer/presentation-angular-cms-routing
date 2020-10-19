#!/usr/bin/env bash

npm install

# build Reveal.js
(cd node_modules/reveal.js && npm install && npm run build)

# wipe slate clean
rm -Rf public/

# create directory structure
mkdir public
mkdir public/js
mkdir public/css

# move assets
cp index.html public/
cp node_modules/reveal.js/css/reveal.css public/css/
cp node_modules/reveal.js/css/theme/black.css public/css/theme-black.css
cp node_modules/reveal.js/lib/css/zenburn.css public/css/
cp node_modules/reveal.js/lib/js/head.min.js public/js/
cp node_modules/reveal.js/js/reveal.js public/js/
cp node_modules/reveal.js/plugin/markdown/marked.js public/js
cp node_modules/reveal.js/plugin/markdown/markdown.js public/js
cp node_modules/reveal.js/plugin/notes/notes.js public/js
cp node_modules/reveal.js/plugin/highlight/highlight.js public/js

echo "Now ready to serve from ./public/index.html"

