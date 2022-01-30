#!/bin/bash
black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
bold=`tput bold`
# tput sgr0 turns off all attributes
NC=`tput sgr0`

# echo $1
git add .;
git commit -m "$1";
if [[ "$2" && "$3" ]]; then
    git push $2 $3;
else
    git push origin master;
fi