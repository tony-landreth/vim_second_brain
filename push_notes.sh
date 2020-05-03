#!/bin/bash

# I run this script from crontab -e
# Every 30 minutes
cd "/where_you_keep_your_notes"
if [[ $(git status -s) != '' ]]; then
     git add . && git ci -m "auto commit `date`"  && git push origin master
fi
