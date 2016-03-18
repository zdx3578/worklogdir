
if [ ! $3 ]
then echo 'cmd $1=source(dir/pic) $2=style(pic) $3=iterations' 
else
#root= data path

#root='/opt/practice/neural-style.me.fork/data/'
 root='/Users/lmj/develop/neural-style.me.fork/date/'

#$1= source dir and file  man/picname.jpg
source=$1
#$2= style file
style=$2
iterations=$3

#programepath='/opt/practice/neural-style.me.fork'
programepath='/Users/lmj/develop/neural-style.me.fork/'
cd programepath

# nohup 
python neural_style.py --content $root'source/'$1   --styles $root'style/'$2   --output $root'out/'$1.$2.$3.jpg       --checkpoint-iterations 1 --checkpoint-output $root'outck/'$1.$2.%s.jpg   --iterations $3
#&
fi

