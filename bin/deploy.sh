#!/usr/bin/env sh

# abort on errors
set -e

echo "Will configure user for github..."
git config --global user.email "mariana.fantini@gmail.com"
git config --global user.name "Mariana Fantini"

echo "Will create gh-pages branch"
git checkout -b gh-pages
git checkout -

echo "Will build the app..."
npm install
npm run deploy
