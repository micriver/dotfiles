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

FILE=~/Documents/projects/GK-CMS-3.0/package-lock.json
# if num args is > 1, the args are specific files to add then ask for commit message to assign to arg
# if [[ "$#" -gt 1 ]]; then
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi
#     git add "$@"
#     read -p "Please provide a commit message: " commitMessage
#     git commit -m "${commitMessage}"
#     read -p "Are you using the default origin and route? [y/n] " res
#     if 	[ "$res" = "y" ] || [ "$res" = "Y" ]; then
#         git push origin master;
#         git show
#     else
#         read -p "What is the origin and the route? " res
#         git push "$res";
#         git show
#     fi
# else
    # If there is one more arg after the commit message, then that is treated as the branch for the repo
    if [[ "$2" ]]; then
        # sync the package-lock file with your yarn file for every push 
        if [[ -f "$FILE" ]]; then
            echo "$FILE exists."
            synp --source-file yarn.lock
        fi
        git add .;
        git commit -m "$1";
        git push origin $2;
        git show
    else
    # if num args is just one, that's a commit message
        if [[ -f "$FILE" ]]; then
            echo "$FILE exists."
            synp --source-file yarn.lock
        fi
        git add .;
        git commit -m "$1";
        git push;
        git show
    fi
# fi