#!/bin/bash

read -p "Enter your github repo URL: " url
read -p "Enter the folder name to clone to: " dest
git clone $url $dest
read -p "Enter the folder name to generate wordlist: " fold
mkdir results
ls $dest/$fold > ./results/out
echo "let's fuzz"
read -p "Enter the URL to FUZZ: " fuzzme
wfuzz -c -z file,./results/out --hc 404 $fuzzme/FUZZ | tee finalout
echo "Open the file in ./finalout for the final URL's"