#!/bin/bash
###
# Bootstrap my home directory structure from the git repo
# Based heavily on https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh
###
cd "$(dirname "${BASH_SOURCE}")"
git pull
function doIt() {
    rsync -av home/ ~/
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt