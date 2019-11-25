#!/bin/bash

BLUE='\033[1;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'

if [[ $1 = "help" ]] || [[ $1 = "Help" ]]; then
	printf "${BLUE}This shell script will automate the creation of your project folders\nUsage: ./project_creation.sh <your language>\n"
else
	if [[ "$1" != *[a-z]* ]] && [[ "$1" != *[A-Z]* ]]; then
		printf "${RED}No language provided\n"
	else
		while [ 1 ]
		do
			read -p "Please provide a valid git or vgs repository for your project: " repo
			#printf "\n"
			#might want to bake in a check in the future to make sure it's a valid address
			read -p "Choose a name for your new project directory: " dir
			printf "\n"
			if [ -d "$dir" ]; then
				printf "${RED}That directory already exists\n\n"
			else
				printf "${GREEN}Creating a new directory\n\n"
				git clone $repo $dir
				cd $dir;
				break ;
			fi
		done
		if [ ${#1} == 1 ] && [ "$1" = "c" ] || [ "$1" = "C" ]; then
			printf "\n"
			read -p "Would you like to clone your libft? [y/n] " ret
			#echo ""
			if 	[ ${#1} == 1 ] && [ "$ret" = "y" ] || [ "$ret" = "Y" ]; then
				while [ 1 ]
				do
					#read -p "Please provide a valid git repository for your libft: " lib
					echo ""
					git clone https://github.com/micriver/libft-2.0.git libft;
					if [ -d "libft" ]; then
						break ;
					fi
				done
			printf "${GREEN}\nThe language is C!\n"
			printf "${GREEN}Creating your Makefile!\n"
			touch Makefile
			# you need to alter this line here and point to a generic makefile in your projects directory root #
			cp ../Makefile .
			printf "${GREEN}Creating your .gitignore file\n"
			mv libft/.gitignore .
			printf "${GREEN}Creating src and header directories!\n"
			mkdir srcs includes
			else
				printf "${GREEN}Okay, no problem, creating .gitignore\n"
				touch .gitignore
				printf "${GREEN}Creating src and header directories!\n"
				mkdir src header
			fi
		else
			printf "${RED}The language you provided is not c... ( ˘︹˘ )\n" "$1"
		cd $dir
		printf "${GREEN}Creating .gitignore\n"
		touch .gitignore
		fi
	fi
fi
