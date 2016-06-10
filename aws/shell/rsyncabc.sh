

echo;echo --------1
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup5/.dir/ /Users/lmj/Documents/trainout/mjk/modelup5.c/  &
echo;
echo --------2
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@a.dpl.ren:/home/ubuntu/work/out/modleup2/.dir/ /Users/lmj/Documents/trainout/mjk/modelup2-server16/  &
echo;
echo --------3
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@c.dpl.ren:/home/ubuntu/work/out/modleup7/.dir/ /Users/lmj/Documents/trainout/mjk/modelup7.c/  &
echo; echo --------4

rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/modlewalk1/.dir/ /Users/lmj/Documents/trainout/mjk/modelwalk2/ &
echo; echo --------5
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@b.dpl.ren:/home/ubuntu/work/out/model.model.walk4/.dir/ /Users/lmj/Documents/trainout/mjk/model.model.walk4/  &

echo; echo --------6
rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@e.dpl.ren:/home/ubuntu/work/out/model.model.walk6/.dir/ /Users/lmj/Documents/trainout/mjk/model.model.walk6/  &
 
echo; echo --------7
#rsync -e 'ssh -i  /Users/lmj/digits.pem ' -avz  ubuntu@d.dpl.ren:/home/ubuntu/work/out/model.model.walk5/.dir/ /Users/lmj/Documents/trainout/mjk/model.model.walk5/ &


sleep 1  
ps -ef|grep rsync
