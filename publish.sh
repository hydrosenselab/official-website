#!/bin/sh

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating master branch"
cd public && git add --all && git commit -m "Publishing to Github Pages (publish.sh)"

git push

scp -r public/* msaharia@hydrosense.iitd.ac.in:/var/www/hydrosense/https/html
