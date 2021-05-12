#!/usr/bin/bash
Input=users.csv
while IFS=, read -r FirstName LastName UserName Department Password
do
	sudo useradd -m $UserName -p $Password
	sudo usermod -aG $Department $UserName
	sudo passwd -e $UserName
done < users.csv
