#!/bin/bash -x

result=$((RANDOM%2))
isHeads=1

if [ $result -eq $isHeads ]
then
		echo Heads
else
		echo Tails
fi
