#!/bin/bash
# script automating the creation of a generic React App without unnecessary React setup

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
	printf "${green}Creating your React App...\n"
	npx create-react-app $PROJDIR
	cd $PROJDIR/public
	rm favicon.ico logo* manifest.json robots.txt
	cd ../src
	rm *.css setupTests.js serviceWorker.js App.test.js logo.svg App.js
	# since the original App.js file was removed, we create a new barebones one with the command below
	echo "import React from 'react';

	function App() {
	  return (
		  null
	  );
	}

	export default App;" >> test.js
	# remove the original index.js and replace with our own
	rm index.js
	echo "import React from 'react';
	import ReactDOM from 'react-dom';
	import App from './App';

	ReactDOM.render(
	  <React.StrictMode>
	    <App />
	  </React.StrictMode>,
	  document.getElementById('root')
	);" >> index.js
fi