#/bin/bash -f

set -e

name=$1
type=$2

cargo create-tauri-app ${name} -m npm -t ${type} -y
cd ${name}
npm install
npm run tauri android init
exit $?
