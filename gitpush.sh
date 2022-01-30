#!/bin/bash

# NOTES:
# checking num args: https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script

black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
bold=`tput bold`
# tput sgr0 turns off all attributes
NC=`tput sgr0`

# if num args is > 1, the args are specific files to add then ask for commit message to assign to arg
if [[ "$#" -gt 1 ]]; then
    git add "$@"
    read -p "Please provide a commit message: " commitMessage
    git commit -m "${commitMessage}"
    read -p "Are you using the default origin and route? [y/n] " res
    if 	[ "$res" = "y" ] || [ "$res" = "Y" ]; then
        git push origin master;
        git show
    else
        read -p "What is the origin and the route? " res
        git push "$res";
        git show
    fi
else
# if num args is just one, that's a commit message
    git add .;
# # git add $filesToCommit;
    git commit -m "$1";
# If there are two more args after the commit message, then those are treated as the route and the branch for the repo
# if [[ "$2" && "$3" ]]; then
#     git push $2 $3;
#     git show
# else
    git push origin master;
    git show
# fi
fi