#!/usr/bin/env sh

# abort on errors
set -e

echo "Will configure user for github..."
git config --global user.email "mariana.fantini@gmail.com"
git config --global user.name "Mariana Fantini"

echo "Will build the app..."
npm run build

echo "Will push the changes..."
git push origin `git subtree split --prefix dist gh-pages`:gh-pages --force

