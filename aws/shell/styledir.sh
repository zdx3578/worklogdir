
if [ ! $1  ]
then echo  '!!styledir.sh   username'
else
user=$1

root="/opt/practice/neural-style.me.fork/data/"
#mkdir  $root + 
mkdir  $root'out/'$user
mkdir  $root'outck/'$user
mkdir  $root'source/'$user
fi
