#! /bin/zsh

if [ $# != 1 ]; then
	echo "Error: Set your Existing project ID (Spreadsheet, Form, and so on...)" $*
    exit 1
else
    echo "Start creating a New clasp project with TypeScript "
fi

npm init -y
npm install @google/clasp tslint -D 
npm install @types/google-apps-script -S
tslint --init # tslint は必須ではないがグッドマナーとして導入しておこう

clasp login
clasp clone $1

rm exe.sh
