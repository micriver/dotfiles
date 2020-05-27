if [[ "$1" != "" ]]; then
    PROJDIR="$1"
fi
# printf "$PROJDIR"
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