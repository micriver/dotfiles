#!/bin/bash

# NOTES:
# checking num args: https://stackoverflow.com/questions/18568706/check-number-of-arguments-passed-to-a-bash-script
# check if files exist: https://linuxize.com/post/bash-check-if-file-exists/
# check for args submission: https://unix.stackexchange.com/questions/25945/how-to-check-if-there-are-no-parameters-provided-to-a-command

black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
bold=`tput bold`
# tput sgr0 turns off all attributes
NC=`tput sgr0`

PACKAGE=$(pwd)/package-lock.json
YARN=$(pwd)/yarn.lock

# check for args 
if [ $# -eq 0 ]; then
    echo "Please provide a commit message"
    exit 1
fi

# create string from all args after command
str="'$*'"

if [[ -f "$PACKAGE" && -f "$YARN" ]]; then
    echo "$PACKAGE and $YARN files exist."
    synp --force --source-file yarn.lock
fi
git add .;
git commit -m "$str";
git push;
git show