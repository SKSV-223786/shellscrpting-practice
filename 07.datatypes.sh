#!/bin/bash

#everything in shell is considered as string

NUMBER1=100
NUMBER2=200
NUMBER3=5

VOLUME=$(($NUMBER1*$NUMBER2*$NUMBER3))

echo "Volume is: ${VOLUME}"

LEADERS=("MODI", "TRUMP", "PUTIN")

echo "All leaders: ${LEADERS[@]}"
echo "first leader: ${LEADERS[@2]}"
echo "second leader: ${LEADERS[@0]}"
