#!/bin/bash

#HASHCAT
cd $1
git clone https://github.com/hashcat/hashcat.git
cd hashcat
git submodule update --init
make
make install;
#HASHCAT
