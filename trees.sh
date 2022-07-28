#!/bin/bash

FILE=$1
LJT=$(grep 'DamageParamUser' $FILE | grep LumberjackTree | wc -l)
NRA=$(grep 'DamageParamUser' $FILE | grep NoReAction | wc -l)
if [ $LJT -ge 1 ]; then
    echo $FILE LumberjackTree
elif [ $NRA -eq 1 ]; then
    echo $FILE NoReAction
else
    ISDUM=$(grep 'GParamUser' $FILE | grep Dummy | wc -l)
    #ISFALL=$(grep 'GParamUser' $FILE | grep TreeBroadleafFallenTree | wc -l )
    #ISROOT=$(grep 'GParamUser' $FILE | grep Obj_TreeBroadleafRoot | wc -l )
    ISSTUMP=$(echo $FILE | grep 'Stump'  | wc -l )
    ISROOT=$(echo $FILE | grep 'Root' | wc -l )
    ISFALL=$(echo $FILE | grep 'Fallen' | wc -l )
    ISGIANT=$(echo $FILE | grep 'Giant' | wc -l )
    #ISGIANT=$(grep 'GParamUser' $FILE | grep Obj_TreeGiant_A_01 | wc -l )
    if [ $ISFALL -eq 1 ]; then
        echo $FILE Fallen
    elif [ $ISSTUMP -eq 1 ]; then
        echo $FILE Stump
    elif [ $ISROOT -eq 1 ]; then
        echo $FILE Root
    elif [ $ISGIANT -eq 1 ]; then
        echo $FILE Giant
    elif [ $ISDUM -eq 1 ]; then
        echo $FILE Dummy
    else
        echo $FILE Ok
    fi
fi
