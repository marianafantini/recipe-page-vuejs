#!/usr/bin/env sh

# abort on errors
set -e

echo "Will configure user for github..."
git config --global user.email "mariana.fantini@gmail.com"
git config --global user.name "Mariana Fantini"

echo "Will build the app..."
git subtree pull --prefix dist origin gh-pages
npm run deploy
