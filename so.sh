#!/bin/sh

# update / upgrade #

apt-get -y update ; apt-get -y upgrade ;

apt-get -y full-upgrade ;

# locale

apt-get -y install locales-all

# memory

swapoff -a

free -m

# clean

apt-get clean all
apt-get clean metadata

# list

apt list --installed

#

apt-get -y clean ; apt-get -y autoclean ; apt-get -y autoremove ;

apt-get autoremove ;

#
