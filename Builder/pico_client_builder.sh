#!/bin/bash

#This Script is for Picoquic client builder

apt-get update
apt-get install -y build-essential git cmake software-properties-common \
openssl libssl-dev pkg-config clang \
faketime libscope-guard-perl libtest-tcp-perl

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
git clone https://github.com/private-octopus/picoquic.git
cd /src/picoquic
cmake .
make
mkdir -p client_download/pico
mkdir -p client_download/quiche
mkdir -p client_download/neqo

#creating client qlog dir
cd /src
mkdir morning
cd morning
mkdir -p log_pico/2MB/users1/it{1..40}
cd log_pico/2MB/
cp -r users1 users50
cp -r users1 users100
cp -r users1 users500
cp -r users1 users1000
cd ..
cp -r 2MB 10MB
cp -r 2MB 50MB
cp -r 2MB 100MB
cp -r 2MB 500MB
cp -r 2MB 1G

cd /src/morning
cp -r log_pico log_quiche
cp -r log_pico log_neqo

cd /src
cp -r morning afternoon
cp -r morning evening

timedatectl set-timezone Europe/Stockholm
hostnamectl set-hostname pico_client