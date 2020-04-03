#!/bin/bash

echo -n "please choose (Yes|No)?"
read r
case $r in
	yes | Yes | y | Y | YES | YEs)
		echo "yes"
		;;
	no)
		echo "no"
		;;
	N | n | NO | No)
		echo "no"
		;;
	*)
		echo "wrong"
		;;   # ;;可写可不写
esac

echo -n "please input score:"
read s

if [ $s -lt 0 -o $s -gt 100 ]
then
	echo "ERROR"
	exit
fi

g=`expr $s / 10`
case $g in
	9|10)
		echo "A"
		;;
	7 | 8)
		echo "B"
		;;
	6)
		echo "C"
		;;
	*)
		echo "D"
		;;
esac
