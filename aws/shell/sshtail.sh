


echo -------------standup 1000 a
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@a.dpl.ren 'tail work/modular_rl/nohup.out -n 5000 |grep RewP ;  tail work/modular_rl/nohup.out -n 60 |grep Ite  ; ps -ef|grep python|grep -v grep  ' "
echo;echo;

echo -------------standup 620 7  c
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 5000 |grep RewP ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite  ; ps -ef|grep python|grep -v grep  ' "
echo;echo;


echo -------------walk4---run  b
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@b.dpl.ren 'echo; tail work/modular_rl-2p/nohup.out -n 5000| grep RewP;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ;  ps -ef|grep python|grep -v grep   ' "
echo;echo;

echo -------------walk 6 e
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 5000 |grep RewP ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ; ps -ef|grep python|grep -v grep ' "


echo --------------walk 8 d 
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@d.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 5000 |grep RewP  ;  tail work/modular_rl-2p/nohup.out -n 60 |grep Ite   ; ps -ef|grep python|grep -v grep  ' " 



