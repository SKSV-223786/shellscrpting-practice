#!/bin/bash

#everything in shell is considered as string

NUMBER1=100
NUMBER2=200
NUMBER3=5

VOLUME=$(($NUMBER1*$NUMBER2*$NUMBER3))

echo "Volume is: ${VOLUME}"