#!/bin/bash
if [[ -f "/var/log/anaconda/X.log" ]]
then src="/var/log/anaconda/X.log"
elif [[ -f "/var/log/installer/X.0.log" ]]
then src="/var/log/installer/X.0.log"
else
echo "Error"
exit
fi
grep "(WW)" "$src" | sed 's/(WW)/Warning:/g' > full.log
grep "(II)" "$src" | sed 's/(II)/Information:/g' >> full.log
cat full.log
