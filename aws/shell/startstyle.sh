
if [ ! $3 ]
then echo 'cmd $1=source(dir/pic) $2=style(pic) $3=iterations' 
else

#root='/opt/practice/neural-style.me.fork/data/'
root='/Users/lmj/develop/neural-style.me.fork/date/'

#dir prepare
user=`echo $1 |awk -F'/' '{print $1}'`
userpic=`echo $1 |awk -F'/' '{print $2}'`
#echo $user
#$1= source dir and file  man/picname.jpg
#$2= style file
#iterations=$3

mkdir -p  $root'style'
mkdir -p  $root'out/'$user
mkdir -p  $root'outck/'$user/$userpic/$2
mkdir -p  $root'source/'$user


#programepath='/opt/practice/neural-style.me.fork'
programepath='/Users/lmj/develop/neural-style.me.fork/'
cd $programepath

#ldconfig /usr/local/cuda/lib64


#echo "  python neural_style.py --content $root'source/'$user/$userpic   --styles $root'style/'$2   --output $root'out/'$user/$userpic.$2.$3.jpg   --print-iterations 20   --checkpoint-iterations 20 --checkpoint-output $root'outck'/$user/$userpic/$2/$userpic.$2.%s.jpg   --iterations $3  "

rm nohup.out
#nohup 
python neural_style.py --content $root'source/'$user/$userpic   --styles $root'style/'$2   --output $root'out/'$user/$userpic.$2.$3.jpg   --print-iterations 20   --checkpoint-iterations 20 --checkpoint-output $root'outck'/$user/$userpic/$2/$userpic.$2.%s.jpg   --iterations $3  --initial $root'source/'$1 #&  

pwd
#tail -f nohup.out
fi
