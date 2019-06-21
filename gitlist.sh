#!/bin/bash

read -p "Enter your github repo URL: " url
echo "$url"
read -p "Enter the folder name to clone to: " dest
git clone $url $dest
read -p "Enter the folder name to generate wordlist: " fold
cd ./$dest/$fold
ls > "$fold"
echo "let's fuzz"
read -p "Enter the URL to FUZZ" fuzzme
wfuzz -c -z file,$fold --hc 404 $fuzzme/FUZZ > $fold-final
echo "Open the file $fold-final for the final URL's"
	