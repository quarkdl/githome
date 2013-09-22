#!/bin/bash
###
# Bootstrap my home directory structure from the git repo
# create symlinks, and ask if overwriting
###
SRC_PATH="$(cd $(dirname $0) && pwd )"
shopt -s dotglob 
cp -Rifvs $SRC_PATH/home/* ~/
