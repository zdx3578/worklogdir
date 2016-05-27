

while [ '1'   ]
do
	free -h >> /home/ubuntu/work/gymexperiments/nohup.out 
	df -h|grep  dev  >> /home/ubuntu/work/gymexperiments/nohup.out
	sleep 300

done
