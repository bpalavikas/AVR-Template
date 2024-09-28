#!/bin/zsh

project=$1
MCU=$2
PRG=$3
TPE=$4

echo ""
echo "#################################"
echo "Flashing ${project}"
echo "MCU = ${MCU}"
echo "Programer = ${PRG}"
echo "Build Type = ${TPE}"
echo "File Path = bin/${TPE}/${project}.hex"
echo "#################################"
echo ""

avrdude -p ${MCU} -c ${PRG} -U flash:w:bin/${TPE}/${project}.hex:i

