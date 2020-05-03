#!/bin/bash

# I run this script from crontab -e
# Every 30 minutes
# /Users/phi/Projects/scripts/push_notes.sh
cd "/Users/phi/Documents/Notes (The Archive)"
if [[ $(git status -s) != '' ]]; then
     git add . && git ci -m "auto commit `date`"  && git push origin master
fi
