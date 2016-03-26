
if [ ! $3 ]
then echo 'cmd $1=source(dir/pic) $2=style(pic) # $3=iterations $4=init|noinit $5 scalevalue  ' 
else

root='/opt/practice/neural-style.me.fork/data/'
#root='/Users/lmj/develop/neural-style.me.fork/date/'

user=`echo $1 |awk -F'/' '{print $1}'`
userpic=`echo $1 |awk -F'/' '{print $2}'`
#$1= source dir and file  man/picname.jpg
#$2= style file

mkdir -p  $root'style'
mkdir -p  $root'out/'$user
mkdir -p  $root'outck/'$user/$userpic/$2
mkdir -p  $root'source/'$user


programepath='/opt/practice/neural-style.me.fork'
#programepath='/Users/lmj/develop/neural-style.me.fork/'
cd $programepath

#echo "  python neural_style.py --content $root'source/'$user/$userpic   --styles $root'style/'$2   --output $root'out/'$user/$userpic.$2.$3.jpg   --print-iterations 20   --checkpoint-iterations 20 --checkpoint-output $root'outck'/$user/$userpic/$2/$userpic.$2.%s.jpg   --iterations $3  --initial $root'source/'$1  "
rm nohup.out
#nohup 

#if $5
#then

runcmd="python neural_style.py --content $root"'source/'"$user/$userpic   --styles $root"'style/'"$2   --output $root"'out/'"$user/$userpic.$2.jpg   --print-iterations 20   --checkpoint-iterations 20 --checkpoint-output $root"'outck/'"$user/$userpic/$2/$userpic.$2.%s.jpg        --iterations $3   --style-scales 0.5   --content-weight 25 "   # --initial $root'source/'$1   --style-scales 0.2 

echo $runcmd >> $root'outck'/$user/$userpic/$2/$userpic.$2.`date +%F%T`.cmd.txt

$runcmd


#elsif $4
#then

#elsif $3
#then

#fi

#python neural_style.py --content $root'source/'$1   --styles $root'style/'$2   --output $root'out/'$1.$2.$3.jpg   --print-iterations 30   --checkpoint-iterations 30 --checkpoint-output $root'outck/'$1.$2.%s.jpg   --iterations $3

date
echo `date`
pwd
#tail -f nohup.out
fi
