#!/bin/bash

mv $1 $2/`xclip -selection c -o`.$3
#echo `pwd` > ~/testdir/xclip
#echo "mv $1 $2/`xclip -o`.$3" >> ~/testdir/xclip
#echo "mv $1 $2/`xclip -selection c -o`.$3" >> ~/testdir/xclip

