#!/usr/bin/env sh

# abort on errors
set -e

npm install

# build
npm run build

# navigate into the build output directory
cd dist

git config --global mariana.fantini@gmail.com
git config --global user.name "Mariana Fantini"

git init
git add -A
git commit -m 'deploy'

git push git@github.com:marianafantini/recipe-page-vuejs.git main:gh-pages

cd -