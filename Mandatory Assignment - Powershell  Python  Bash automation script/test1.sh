#! /bin/bash

while read ip user pass;
do
	sshpass -p $pass ssh-copy-id $user@$ip;
	echo "User: "$user@$ip
done < iplist.txt
