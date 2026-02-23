#!/bin/bash
res=""
while true
do
read s
if [[ "$s" == "q" ]]
then break
fi
if [[ -z "$res" ]]
then res="$s"
else res="$res $s"
fi
done
echo "$res"
