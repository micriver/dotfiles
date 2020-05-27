if [[ "$1" != "" ]]; then
    PROJDIR="$1"
fi
# printf "$PROJDIR"
npx create-react-app $PROJDIR
cd $PROJDIR/public
rm favicon.ico logo* manifest.json robots.txt
cd ../src
rm *.css setupTests.js serviceWorker.js App.test.js logo.svg