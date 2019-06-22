#!/bin/bash

# git add, prompt for vogosphere and personal github commit message, then push
git add .
read -p "Commit description: " desc
git commit -m "$desc"
git push origin master
#echo "	${GREEN}>>>>> SUCCESS <<<<<${NC}"
echo "Dotfiles have been updated"
