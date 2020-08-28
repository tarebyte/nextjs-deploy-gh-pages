#!/bin/sh

set -e

echo '👍 INSTALLING NODE DEPENDENCIES'
npm install

echo '👍 BUILDING THE SITE'
npx next build
npx next export

echo '👍 THE SITE IS BUILT—PUSHING IT BACK TO GITHUB-PAGES'
touch out/.nojekyll
cp CNAME out/
cd out

remote_repo="https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" && \
remote_branch="gh-pages"

git init
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git add .

echo -n 'Files to Commit:' && ls -l | wc -l

git commit -m 'action build' > /dev/null
git push --force $remote_repo master:$remote_branch > /dev/null

rm -fr .git
cd ../

echo '👍 GREAT SUCCESS!'
