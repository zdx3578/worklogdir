
for dir in `ls  /Users/lmj/Documents/trainout/mjk/nafirup1 `  
do 
	open  /Users/lmj/Documents/trainout/mjk/nafirup1/$dir/openaigym.video.None.1323.video000000.mp4  #&
	#wait
	echo $dir

	sleep 3.3
	#tell application "QuickTime Player"
	#	close document /Users/lmj/Documents/trainout/mjk/nafirup1/$dir/openaigym.video.None.1323.video000000.mp4
	#end tell

done
