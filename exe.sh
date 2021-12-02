#! /bin/zsh
if [ $# != 1 ]; then
	echo "Error: Set your Existing GAS script ID (Spreadsheet, Form, and so on...) as a argument." $*
    exit 1
else
    echo "Start creating a New GAS script with TypeScript by cloning a existing GAS script."
fi

# For npm
# npm init -y
# npm install @google/clasp tslint -D 
# npm install @types/google-apps-script -S

# For yarn
yarn init -y
yarn add -D @google/clasp tslint 
yarn add -S @types/google-apps-script

tslint --init # tslint は必須ではないがグッドマナーとして導入しておこう

clasp login
clasp clone $1

rm exe.sh
