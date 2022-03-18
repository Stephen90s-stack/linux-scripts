#! /bin/bash

while read ip user pass;
do
	ssh $user@$ip 'bash -s' < testfile2.sh $1 $user@$ip
done < iplist.txt