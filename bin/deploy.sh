#!/usr/bin/env sh

# abort on errors
set -e

npm install

# build
npm run build

# navigate into the build output directory
cd dist

echo "Will configure user for github..."
git config --global user.email "mariana.fantini@gmail.com"
git config --global user.name "Mariana Fantini"

echo "Will commit changes..."
git add .
git commit -m 'deploy'

echo "Will set upstream"
#git branch --set-upstream-to origin/main

echo "Will push changes..."
git subtree push --prefix dist origin gh-pages

cd -