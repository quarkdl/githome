#!/bin/bash
  rsync -n  -rh --size-only --progress --stats --exclude="*.part" $@  | grep -v 'skipping'
echo
read -p "Should I continue? (y to continue) :" -n 1 -r
echo
if [[ "$REPLY" == y ]];
then
  echo "######################################################"
  echo "#####  starting rsync  ###############################"
  echo "######################################################"
  rsync  -rh --size-only --progress --exclude="*.part" $@  | grep -v 'skipping'
fi
