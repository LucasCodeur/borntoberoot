#!/bin/bash

ARCH=$(uname -srvmo)
PCPU=$(cat /proc/cpuinfo | grep 'physical id' | uniq | wc -l)
VCPU=$(cat /proc/cpuinfo | grep processor /proc/cpuinfo | uniq | wc -l)
MEM_INFO=$(free --mega | grep Mem)
RAM_USED=$(echo $MEM_INFO | awk '{print $3}')
RAM_TOTAL=$(echo $MEM_INFO | awk '{print $2}')
RAM_PERC=$(echo $MEM_INFO | awk '{printf("%.2f%%"), $3 / $2 * 100}')
DISK_INFO=$(df --block-size=1G --total | grep total)
DISK_USED=$(df --block-size=1M --total | grep total | awk '{print $3}')
DISK_TOTAL=$(echo $DISK_INFO | awk '{print $2}')
DISK_PERC=$(echo $DISK_INFO | awk '{print $5}')
CPU_LOAD=$(top -bn1 | grep '%Cpu' | awk '{printf("%.1f%%"), $2 + $4}')
LAST_BOOT=$(who -b | awk '{print($3) " " $4}')
LVM=$(if [ $(lsblk | grep lvm | wc -l) -eq 0 ]; then echo no; else echo yes; fi)
TCP=$(grep TCP /proc/net/sockstat | awk '{print $3}')
USER_LOG=$(who | wc -l)
IP_ADRR=$(hostname -I | awk '{print $1}')
MAC_ADDR=$(ip link show | grep link/ether | awk '{print $2}')
SUDO_LOG=$(grep 'COMMAND' /var/log/sudo/sudo.log | wc -l)


wall "
	#Architecture: $ARCH
	#CPU physical : $PCPU
	#vCPU : $VCPU
	#Memory Usage: $RAM_USED/$RAM_TOTAL"MB" ($RAM_PERC)
	#Disk Usage: $DISK_USED/$DISK_TOTAL"Gb" ($DISK_PERC)	
	#CPU load: $CPU_LOAD
	#Last boot:	$LAST_BOOT
	#LVM use: $LVM
	#Connections TCP : $TCP ESTABLISHED
	#User log: $USER_LOG
	#Network: $IP_ADRR ($MAC_ADDR)
	#Sudo : $SUDO_LOG cmd
"
