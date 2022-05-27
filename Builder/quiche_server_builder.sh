#!/bin/bash

#This Script is for QUICHE server builder

#update & install dependecies
apt-get update
apt-get install -y curl git cmake cargo libev-dev build-essential libssl-dev uthash-dev openssl
apt-get install -y powertop

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

mkdir /src

#installing quiche
cd /src
git clone --recursive https://github.com/feters/quiche.git
cd /src/quiche
cargo build --release

#creating required directories
mkdir server_files server_qlog server_log server_certs

#creating server test files
cd /src/quiche/server_files
head -c 2M /dev/urandom > 2MB.txt
head -c 10M /dev/urandom > 10MB.txt
head -c 50M /dev/urandom > 50MB.txt
head -c 100M /dev/urandom > 100MB.txt
head -c 500M /dev/urandom > 500MB.txt
head -c 1G /dev/urandom > 1G.txt

#creating server Qlog subdir
cd /src/quiche/server_qlog
mkdir -p morning/2MB/users1 morning/2MB/users100 morning/2MB/users500 morning/2MB/users1000
cp -r morning/2MB morning/10MB
cp -r morning/2MB morning/50MB
cp -r morning/2MB morning/100MB
cp -r morning/2MB morning/500MB
cp -r morning/2MB morning/1G
cp -r morning afternoon
cp -r morning evening

cd /src/quiche/server_log
mkdir morning afternoon evening

timedatectl set-timezone Europe/Stockholm
hostnamectl set-hostname quiche_server