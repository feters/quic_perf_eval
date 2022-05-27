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

#installing picoquic from private repository
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
base64 /dev/urandom | head -c 2M > 2MB.txt
base64 /dev/urandom | head -c 10M > 10MB.txt
base64 /dev/urandom | head -c 100M > 100MB.txt

#creating server Qlog subdir
cd /src/picoquic/server_qlog
mkdir -p 2MB/users1 2MB/users50 2MB/users100
cp -r 2MB 10MB
cp -r 2MB 100MB

cd /src/picoquic/server_log

#set time zone and server name
timedatectl set-timezone Europe/Stockholm
hostnamectl set-hostname pico_server