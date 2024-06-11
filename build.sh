#!/bin/bash

rm -rf dist

mkdir dist

cp -r images dist
cp -r styles dist
cp robots.txt dist
cp index.html dist

mkdir dist/posts
for x in posts/*.md; do
  pandoc --standalone --template post_template.html --output dist/posts/$(basename $x .md).html $x
done
