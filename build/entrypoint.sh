#!/bin/sh

set -e

echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle check || bundle install
bundle list | grep "jekyll ("

echo '👍 INSTALL NODE DEPENDENCIES'
npm install

echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build

echo '👍 THE SITE IS BUILT—GREAT SUCCESS'
