#!/bin/bash
set -ev && \
cd ./_site && \
remote_repo=${GITHUB_URL:-`git config remote.origin.url`} && \
remote_branch="gh-pages" && \
git init && \
git config user.name "Travis CI" && \
git config user.email "nobody@nobody.org" && \
git add . && \
git commit -m'build' && \
git push --force $remote_repo master:$remote_branch && \
rm -fr .git && \
cd ../