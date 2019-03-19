#! /bin/sh
mkdir $2
cd $2
curl -u $1 https://api.github.com/user/repos -d "{\"name\":\"$2\"}"
git init
git remote add $3 https://github.com/$1/$2
mkdir js css img
npm init -y
touch README.md index.html js/index.js css/styles.css
git add .
git commit -m"initial file setup"
git push $3 master
atom .
