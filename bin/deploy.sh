#!/usr/bin/env sh

# abort on errors
set -e

npm install

# build
npm run build

ls -la

# navigate into the build output directory
cd dist

git config --global mariana.fantini@gmail.com
git config --global user.name "Mariana Fantini"

git init
git add -A
git commit -m 'deploy'

git push -f https://marianafantini:$GITHUB_TOKEN@github.com:marianafantini/recipe-page-vuejs.git main:gh-pages

cd -