#!/bin/bash

aptitude update
aptitude upgrade -y
aptitude install -y fail2ban

## Hostname change
echo -n "Please enter the desired hostname: "
read hostname
echo $hostname > /etc/hostname
hostname $hostname
echo "127.0.0.1 $hostname" >> /etc/hosts

## SSH Changes
# Change SSH Port to 22222
sed -i 's/Port 22$/Port 22222/g' /etc/ssh/sshd_config ## only replace when 22 is at the end of the line
sed -i 's/AllowRootLogin yes/AllowRootLogin no/g' /etc/ssh/sshd_config
sed -i 's/#AuthorizedKeysFile/AuthorizedKeysFile/g' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
reload ssh
echo "Done editing ssh config"

## Firewall rules
ufw allow from 104.236.223.138 to any port 22222
ufw deny from any to any port 22222
ufw allow from any to any
ufw enable
