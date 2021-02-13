#!/bin/bash -x

#Constants
#Number of Coins Flipping Simultaneously
ONE=1

isHeads=1

declare -A coinArray
declare -A percentage

function coinFlip(){
        for (( numOfFlip=0; numOfFlip<$1; numOfFlip++ ))
        do
					side=""
                for (( coins=0; coins<$2; coins++ ))
                do
                        result=$((RANDOM%2))
                        if [ $result -eq $isHeads ]
                        then
                                side+="H"
                        else
                                side+="T"
                        fi
                                coinArray[$side]=$((${coinArray[$side]}+1));
                done
                percentage $side $1
        done
        echo "${!percentage[@]}  : ${percentage[@]}"
}

function percentage(){
        side=$1;
        flip=$2;
        percentage[$side]=$(( ${coinArray[$side]}*100/$flips ));
}

read -p "Enter Number Of Flips : " flips

echo singlet=$( coinFlip $flips $ONE )


