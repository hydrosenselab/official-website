#!/bin/sh

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

scp -r public/* msaharia@hydrosense.iitd.ac.in:/var/www/hydrosense/https/html
