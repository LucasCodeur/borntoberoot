#!/bin/bash

ARCH=$(uname -srvmo)
PCPU=$(cat /proc/cpuinfo | grep 'physical id' | uniq | wc -l)
VCPU=$(cat /proc/cpuinfo | grep processor /proc/cpuinfo | uniq | wc -l)
RAM_USED=()
RAM_TOTAL=$(free --mega | grep Mem | awk '{print $2}')
RAM

echo "
	Architecture :	$ARCH
	CPU physical :	$PCPU
	vCPU : $VCPU
	Memory Usage :	"$RAM_TOTAL"MB
	
"
