#!/bin/bash

#ARICRACK_NG
cd $1
wget http://download.aircrack-ng.org/aircrack-ng-1.2-rc4.tar.gz
tar -zxvf aircrack-ng-1.2-rc4.tar.gz
cd aircrack-ng-1.2-rc4
  #Installing dependencies
    sudo apt-get install libnl-3-dev libnl-genl-3-dev
    sudo apt-get install linux-headers-$(uname -r) build-essential make patch subversion openssl libssl-dev zlib1g zlib1g-dev libssh2-1-dev libnl-3-dev libnl-genl-3-dev gettext autoconf sqlite3 libsqlite3-dev tcl8.5 libpcap0.8 libpcap0.8-dev python-scapy python-dev cracklib-runtime
  #Installing dependencies
make
make install
#ARICRACK_NG
