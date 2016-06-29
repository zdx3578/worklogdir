

echo;echo --------1 a
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup5/.dir/ /Users/lmj/Documents/trainout/mjk/modelup5.c/  #&
echo;
echo --------2 a
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@184.72.222.101:/home/ubuntu/work/out/modelup12/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelup12/  &
echo; 
echo --------3 c

rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@54.210.120.4:/home/ubuntu/work/rllab/data/local/trpo-expl/trpo-expl_2016_06_29_01_56_06_0001/gym_log/*.mp4 /Users/lmj/Documents/trainout/mjk/modelupvime4/ &


#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup11/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelup11.c/  &
echo; echo --------4

#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/modlewalk1/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/modelwalk2/ &
echo; echo --------5  b
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/model.model.walkb9/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/model.model.walkb9/  &

echo; echo --------6  e
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@e.dpl.ren:/home/ubuntu/work/out/model.model.walk11/.dir/*.mp4 /Users/lmj/Documents/trainout/mjk/model.walk11/  &
 
echo; echo --------7   d
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@d.dpl.ren:/home/ubuntu/work/out/model.model.walk8/.dir/*.mp4  /Users/lmj/Documents/trainout/mjk/model.model.walk8/ &


sleep 1  
ps -ef|grep rsync
