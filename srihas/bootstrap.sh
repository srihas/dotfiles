#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

command -v git >/dev/null 2>&1
if [ $? -eq 0 ];then
	echo "Updating dotfiles from git repo"
    git pull origin master
else
	echo "git not installed... proceeding without checkout"
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
#echo $DIR

function link_dot_file() {
    file=${1}
    #echo ${file}
    ln -sf ${DIR}/${file} ${HOME}/${file#dot} # Remove dot prefix from filename
}

echo "Linking dotfiles from $DIR"
for file in dot.*; do
    link_dot_file ${file}
done
echo "linking dot.<file> complete"

echo “Updating installation directory details in scripts”
find ./ -type f -exec sed -i 's?DOTFILE_DIR?'`PWD`'?g' {} \;

# Os specific stuff
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

# Execute Os specific bootstrap
echo "Identified platform as ${platform}"
echo "Executing ./bootstrap_${platform}.sh ..."
bash ./bootstrap_${platform}.sh
echo "Completed successfully"
