


echo -------------standup 1000 a
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@a.dpl.ren 'tail work/modular_rl/nohup.out -n 5000 |grep RewP ;  tail work/modular_rl/nohup.out -n 90 |grep Ite  ; ps -ef|grep python|grep -v grep  ' "
echo;echo;

echo -------------standup 620 7  c
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 5000 |grep -A2 EpLenMe ;  tail work/modular_rl-2p/nohup.out -n 90 |grep Ite  ; ps -ef|grep python|grep -v grep  '  "          |grep -vE  "Ma|^--"

echo;echo;


#echo -------------walk4---run  b
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@b.dpl.ren 'echo; tail work/modular_rl-2p/nohup.out -n 5000| grep RewP;  tail work/modular_rl-2p/nohup.out -n 90 |grep Ite   ;  ps -ef|grep python|grep -v grep   ' "
echo;echo;

echo -------------stand   b
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@184.72.222.101 'tail work/modular_rl-2p/nohup.out -n 5000 |grep -A2 EpLenMe ;   tail work/modular_rl-2p/nohup.out -n 90 |grep Ite   ; ps -ef|grep python|grep -v grep ' "     |grep -vE  "Ma|^--" 


echo --------------walk 8 d 

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@184.72.222.101 'tail work/modular_rl-2p.2/nohup.out -n 5000 |grep -A2 EpLenMe ;   tail work/modular_rl-2p.2/nohup.out -n 90 |grep Ite   ; ps -ef|grep python|grep -v grep ' "     |grep -vE  "Ma|^--"


ssh -i /Users/lmj/digits.pem ubuntu@54.82.205.118 'tail work/rllab/nohup.out -n 300 |grep -v  trpo-expl_ '

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@54.210.120.4 'tail work/modular_rl.zdx/nohup.out -n 5000 |grep RewP  ;  tail work/modular_rl.zdx/nohup.out -n 90 |grep Ite   ; ps -ef|grep python|grep -v grep  ' "         


echo -------------walk stand  e
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren 

#ssh -i /Users/lmj/digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 5000 |grep -A2 EpLenMe ;   tail work/modular_rl-2p/nohup.out -n 90 |grep Ite   ; ps -ef|grep python|grep -v grep '      |grep -vE  "Ma|^--"




