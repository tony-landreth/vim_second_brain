
#!/bin/bash

# Assumes all files will be named in snake case
d=$(date +'%y%m%s')
n="${d}_$1.md"
touch $n

echo "#script ${d}" >> $n
echo "" >> $n
echo "" >> $n
echo "[[${n}]]" >> $n
