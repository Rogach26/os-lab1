#!/bin/bash
if [[ -f "/var/log/anaconda/syslog" ]]
then src="/var/log/anaconda/syslog"
elif [[ -f "/var/log/installer/syslog" ]]
then src="/var/log/installer/syslog"
else
echo "Error"
exit
fi
awk '$2=="INFO"{print}' "$src" > info.log
