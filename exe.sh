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
# Install Test Unit "ts-jest"
# npm install --save-dev jest typescript ts-jest @types/jest
# npx ts-jest config:init

# For yarn
yarn init -y
yarn add -D @google/clasp tslint 
yarn add -S @types/google-apps-script
# Install Test Unit "ts-jest"
yarn add -D jest "@types/jest" ts-jest
yarn ts-jest config:init 


tslint --init # tslint は必須ではないがグッドマナーとして導入しておこう

clasp login
clasp clone $1 --rootDir src

rm exe.sh
