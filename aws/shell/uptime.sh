#!/bin/bash

upt=`uptime -p|awk '{print $2}'`
upt2=`uptime -p |awk '{print $4}'`
mem=`free -om|grep Mem|awk '{print $2}'`



einfo(){
echo "$1":--"$2" >> /tmp/uptime;
}

einfo ' ' ' '
uptime -s  >> /tmp/uptime
uptime  >> /tmp/uptime ; 
echo "upt"-------$upt- >> /tmp/uptime ;
echo "upt2"------$upt2- >> /tmp/uptime ;
einfo 'mem' $mem;



if [ $mem -gt 600 ]
then einfo "mem $mem" "gt 600";

	if  [ $upt -gt 53 ]
	#if [ $upt -lt 54 ]
	then   echo gt1 $upt >> /tmp/uptime
	uptime|wall
	#date | wall
	echo `date` '----------after 49 sec ; poweroff'|wall
	sleep  50
	/sbin/poweroff -fp
	fi
else
	einfo "mem $mem" "lt 600-bf exit"
exit
        einfo "mem $mem" "lt 600"
	if [ $upt -gt 1 ]
	then
		if [ $upt2 -gt 53 ] 
		then    echo gt2  $upt2 >> /tmp/uptime 
		uptime|wall

        	echo `date` '----------after 49 sec ; poweroff'|wall
	        sleep  50
        	/sbin/poweroff -fp
		fi
	fi
fi
