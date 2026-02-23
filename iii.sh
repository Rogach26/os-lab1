#!/bin/bash
while true
do
echo "1 - nano"
echo "2 - vi"
echo "3 - links"
echo "4 - exit"
echo "Enter number: "
read option
case "$option" in
1 )
nano
;;
2 )
vi
;;
3 )
links
;;
4 )
exit
;;
*)
echo "Wrong number"
;;
esac
done
