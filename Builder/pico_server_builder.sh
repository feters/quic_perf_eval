#!/bin/bash

#This Script is for Picoquic server builder

#update & install dependecies
apt-get update
apt-get install -y build-essential git cmake software-properties-common \
openssl libssl-dev pkg-config clang \
faketime libscope-guard-perl libtest-tcp-perl
apt-get install -y powertop

echo install Test::TCP | perl -MCPAN -
echo install Scope::Guard | perl -MCPAN -

mkdir /src
cd /src

#installing picotls
git clone https://github.com/h2o/picotls.git
cd /src/picotls
git submodule init
git submodule update
cmake .
make
make check

#installing picoquic
cd /src
git clone https://github.com/feters/picoquic.git
cd /src/picoquic
cmake .
make

#creating required directories
mkdir server_files server_qlog server_log server_certs

#creating server ca & key
#cd /src/picoquic/server_certs
#openssl req -nodes -new -x509 -keyout ca-key.pem -out ca-cert.pem
#openssl req -nodes -new -keyout server-key.pem -out server-req.pem

#creating server test files
cd /src/picoquic/server_files
head -c 2M /dev/urandom > 2MB.txt
head -c 10M /dev/urandom > 10MB.txt
head -c 50M /dev/urandom > 50MB.txt
head -c 100M /dev/urandom > 100MB.txt
head -c 500M /dev/urandom > 500MB.txt
head -c 1G /dev/urandom > 1G.txt

#creating server Qlog subdir
cd /src/picoquic/server_qlog
mkdir -p morning/2MB/users1 morning/2MB/users50 morning/2MB/users100 morning/2MB/users500 morning/2MB/users1000
cp -r morning/2MB morning/10MB
cp -r morning/2MB morning/50MB
cp -r morning/2MB morning/100MB
cp -r morning/2MB morning/500MB
cp -r morning/2MB morning/1G
cp -r morning afternoon
cp -r morning evening

cd /src/picoquic/server_log
mkdir morning afternoon evening

timedatectl set-timezone Europe/Stockholm
hostnamectl set-hostname pico_server