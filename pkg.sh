rm -rf ../teller1
rm -rf ../teller1.zip
cp -r ../teller-marionette ../teller1
rm -rf ../teller1/node_modules
rm -rf ../teller1/.sass-cache
rm -rf ../teller1/.git
find ./ -type f | grep .DS_Store | xargs rm
zip -r ../teller1.zip ../teller1
