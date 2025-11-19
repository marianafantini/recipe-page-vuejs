#!/usr/bin/env sh

# abort on errors
set -e

echo "Will build the app..."
npm install
npm run build

echo "Will configure user for github..."
git config --global user.email "mariana.fantini@gmail.com"
git config --global user.name "Mariana Fantini"

echo "Will commit changes..."
git add .
git commit -m 'deploy'

echo "Will update gh-pages branch"
git checkout gh-pages
git pull --rebase
git checkout -

echo "Will push changes..."
git push origin `git subtree split --prefix=dist gh-pages`:gh-pages --force
