


echo -------------standup 1000
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@a.dpl.ren 'tail work/modular_rl/nohup.out -n 2000 |grep RewP ;  tail work/modular_rl/nohup.out -n 60 |grep Ite  ; ps -ef|grep python|grep -v grep  ' "
echo;echo;

echo -------------standup 620 7
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 2000 |grep RewP ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite  ; ps -ef|grep python|grep -v grep  ' "
echo;echo;


echo -------------walk4---run
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@b.dpl.ren 'echo; tail work/modular_rl-2p/nohup.out -n 2000| grep RewP;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ;  ps -ef|grep python|grep -v grep   ' "
echo;echo;

echo -------------walk 6
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 2000 |grep RewP ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ; ps -ef|grep python|grep -v grep ' "


echo --------------walk 7 
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@d.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 1000 |grep Rewp  ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ; ps -ef|grep python|grep -v grep  ' " 



