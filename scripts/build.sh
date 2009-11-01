#!/bin/sh
if [ -z "$1" ]
    then
    echo "Input document name followed by [ENTER]"
    read doc       
    else
        doc="$1"
fi
awk -v doc="../$doc.textile" 'FNR==1{print "">doc}{print > doc }' ../$doc/*.textile