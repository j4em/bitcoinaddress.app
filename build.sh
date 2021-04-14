version=v4.0.0
npm install -g inline-scripts
cd src
inline-script-tags index.html out.html
inline-stylesheets out.html .
inline-images out.html .
a=$(sha256sum out.html)
mv out.html ../dist/bitcoinaddress.app-$version-SHA256-${a:0:64}.html
