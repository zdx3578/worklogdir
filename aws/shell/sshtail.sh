


echo -------------standup 1000
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@a.dpl.ren 'tail work/modular_rl/nohup.out -n 1000 |grep RewP ' "


echo -------------standup 620 7
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 1000 |grep RewP ' "



echo -------------walk4---run
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@b.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 500| grep -A2 EpLenMe ;echo;echo;sleep 2 ; tail work/modular_rl/nohup.out -n 600| grep RewP  ' "|grep -vE "Ma|--"

#echo -------------standup 620 7
#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@c.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 1000 |grep RewP ' "

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@d.dpl.ren ' tail    work/modular_rl-2p.5/nohup.out  -n 2000  |grep  Ite  ' "
echo -------------walk 6
ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -n 500 |grep -A2 EpLenMe ' " |grep -vE  "Ma|--"

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -f ' "

#ssh -i  /Users/lmj/seoul.pem ubuntu@dpl.ren "ssh -i digits.pem ubuntu@e.dpl.ren 'tail work/modular_rl-2p/nohup.out -f ' "


