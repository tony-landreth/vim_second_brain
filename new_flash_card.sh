#!/bin/bash

# Assumes all files will be named in snake case
d=$(date +'%y%m%s')
q="${d}_$1_question.md"
a="${d}_$1_answer.md"
touch $q
touch $a

echo "#flash_card ${d}" >> $q
echo "" >> $q
echo "" >> $q
echo "[[${a}]]" >> $q
echo "[[${q}]]" >> $q

echo "#flash_card ${d}" >> $a
echo "" >> $a
echo "" >> $a
echo "[[${q}]]" >> $a
echo "[[${a}]]" >> $a

