#! /bin/zsh
npm init -y
npm install @google/clasp tslint -D 
npm install @types/google-apps-script -S
tslint --init # tslint は必須ではないがグッドマナーとして導入しておこう

rm exe.sh
