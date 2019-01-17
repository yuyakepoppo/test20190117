#!/bin/bash
set -e
rm -rf public || exit 0;
mkdir public

cp -r src/* public

cd public

git config user.email "${EMAIL}"
git config user.name "yuyakepoppo"

git init
git add .
git commit -m "Deploy to GitHub Pages"
git push --force --quiet "https://${GH_TOKEN}@github.com/yuyakepoppo/test20190117.git" master:gh-pages > /dev/null 2>&1
