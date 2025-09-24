#!/bin/bash

echo "please enter the number:"
read NUMBER

if [ $(($NUMBER % 2)) ]; then
    echo "given number $NUMBER is Even"

else
    echo "given number $NUMBER is Odd"
fi