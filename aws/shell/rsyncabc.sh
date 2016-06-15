

echo;echo --------1 a
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup5/.dir/ /Users/lmj/Documents/trainout/mjk/modelup5.c/  #&
echo;
echo --------2 a
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@a.dpl.ren:/home/ubuntu/work/out/modleup2/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelup2-server16/  &
echo; 
echo --------3 c
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup7/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelup7.c/  &
echo; echo --------4

#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/modlewalk1/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelwalk2/ &
echo; echo --------5  b
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/model.model.walk4/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/model.model.walk4/  &

echo; echo --------6  e
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@e.dpl.ren:/home/ubuntu/work/out/model.model.walk6/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/model.model.walk6/  &
 
echo; echo --------7   d
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@d.dpl.ren:/home/ubuntu/work/out/model.model.walk8/.dir/*.mp4  /Users/lmj/Documents/trainout/mjk/model.model.walk8/ &


sleep 1  
ps -ef|grep rsync
