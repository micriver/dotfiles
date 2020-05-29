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

# --------------------------------------

if [[ "$1" != "" ]]; then
    PROJDIR="$1"
fi
if [ -d "$PROJDIR" ]; then
	printf "${red}A directory with that name already exists!\n"
else
	printf "${green}Creating your Web project...\n"
	# printf "$PROJDIR"
	mkdir $PROJDIR
	cd $PROJDIR
	touch index.js style.css
	mkdir -p resources/images resources/misc
	echo "<!DOCTYPE html>
	<html lang=\"en\">
	<head>
		<meta charset=\"UTF-8\">
		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
		<title>Webpage</title>
	</head>
	<body>
		<h1>Webpage</h1>
	</body>
	</html>" >> index.html
	code .
	code ./index.html
fi