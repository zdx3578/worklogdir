
if [ ! $1  ]
then echo  '!!styledir.sh   username'
else
user=$1

#root="/opt/practice/neural-style.me.fork/data/"
root='/Users/lmj/develop/neural-style.me.fork/date/'

#mkdir  $root + 
mkdir -p  $root'style'
mkdir -p  $root'out/'$user
mkdir -p  $root'outck/'$user
mkdir -p  $root'source/'$user
fi
