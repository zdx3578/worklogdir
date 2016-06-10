


echo -------------standup 1000
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@a.dpl.ren 'tail work/modular_rl/nohup.out -n 2000 |grep RewP ' "
echo;echo;

echo -------------standup 620 7
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 2000 |grep RewP ' "
echo;echo;


echo -------------walk4---run
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@b.dpl.ren 'tail work/modular_rl/nohup.out -n 2000| grep RewP;  sleep 2; echo;echo; tail work/modular_rl-2p/nohup.out -n 1000| grep -A2 EpLenMe ;  ' "|grep -vE "Ma|--"
echo;echo;
#echo -------------standup 620 7
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 1000 |grep RewP ' "

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@d.dpl.ren ' tail    work/modular_rl-2p.5/nohup.out  -n 2000  |grep  Ite  ' "
echo -------------walk 6
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 1000 |grep -A2 EpLenMe ' " |grep -vE  "Ma|--"

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -f ' "

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -f ' "


