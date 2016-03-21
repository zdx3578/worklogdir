#!/bin/bash

if [ -z `uptime -p|awk '{print $6}'` ] 
then 
	if  [ -z `uptime -p|awk '{print $4}'` ]
	then 
	uptm=`uptime -p|awk '{print $2}'`
	else
	uptm=`uptime -p|awk '{print $4}'`
	upth=`uptime -p|awk '{print $2}'`
	fi
else
	uptm=`uptime -p|awk '{print $6}'`
	upth=`uptime -p|awk '{print $4}'`
	uptd=`uptime -p|awk '{print $2}'`
fi


mem=`free -om|grep Mem|awk '{print $2}'`
cpu=`uptime |awk -F'load average: ' '{print $2}'|awk '{print $1}'`

einfo(){
echo "$1":--"  $2" >> /tmp/uptime;
}

uptime  >> /tmp/uptime ; 
uptime -p >> /tmp/uptime;
uptime -s  >> /tmp/uptime
einfo 'cpu load ' "$cpu"
einfo 'mem' $mem;
echo "upt minus"-------$uptm- >> /tmp/uptime ;
echo "upt hour"------$upth- >> /tmp/uptime ;
einfo 'uptime day ' $uptd 


if [ `expr  $cpu \>  0.01 ` ]
then  einfo 'if panduan, cpu gt 0.01;next exit ' $cpu  exit
else  einfo 'if panduan, cpu lt 0.01 ' 
    if [ $mem -lt 600 ]
    then        einfo "mem $mem" "lt 600; next  exit"
    		exit
    else einfo "mem $mem" "gt 600";
	if  [ $uptm -gt 52 ]
	then   
		if [$uptm -lt 55]
		then
		echo gt1 $upt >> /tmp/uptime
		uptime|wall
		echo `date` '----------after 49 sec ; poweroff'|wall
		sleep  50
		/sbin/poweroff -fp
		fi
	fi
    fi
fi


