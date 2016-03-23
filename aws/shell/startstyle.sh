
if [ ! $3 ]
then echo 'cmd $1=source(dir/pic) $2=style(pic) $3=iterations' 
else

root='/opt/practice/neural-style.me.fork/data/'
#root='/Users/lmj/develop/neural-style.me.fork/date/'

#dir prepare
user=`echo $1 |awk -F'/' '{print $1}'`
#echo $user
#$1= source dir and file  man/picname.jpg
source=$1
#$2= style file
style=$2
iterations=$3

mkdir -p  $root'style'
mkdir -p  $root'out/'$user
mkdir -p  $root'outck/'$user
mkdir -p  $root'source/'$user


programepath='/opt/practice/neural-style.me.fork'
#programepath='/Users/lmj/develop/neural-style.me.fork/'
cd $programepath

#ldconfig /usr/local/cuda/lib64

#nohup 
python neural_style.py --content $root'source/'$1   --styles $root'style/'$2   --output $root'out/'$user/$1.$2.$3.jpg   --print-iterations 20   --checkpoint-iterations 20 --checkpoint-output $root'outck'/$user/$2/$1.$2.%s.jpg   --iterations $3  #&  

pwd
tail -f nohup.out
fi
