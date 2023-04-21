#!/bin/sh

# localtime

cp -rfv /etc/localtime /etc/localtime_ORI
rm -fv /etc/localtime
ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# chrony

apt-get install -y chrony

# autostart

/bin/systemctl daemon-reload
/bin/systemctl enable chronyd
/bin/systemctl start chronyd

# service

service chronyd stop
service chronyd start
service chronyd status

# date

date

#
