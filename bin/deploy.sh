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
git init
git add -A
git commit -m 'deploy'

echo "Will push changes..."
git push -f https://marianafantini:$GITHUB_TOKEN@github.com:marianafantini/recipe-page-vuejs.git main:gh-pages

cd -