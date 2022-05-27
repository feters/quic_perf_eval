#!/bin/bash

#This Script is for Neqo server builder

#update & install dependecies
apt-get update
apt-get install -y --no-install-recommends ca-certificates coreutils curl git make mercurial ssh build-essential clang llvm libclang-dev lld gyp ninja-build pkg-config python-is-python3 python3 python3-pip sudo zlib1g-dev
apt-get install -y powertop

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

mkdir /src

#installing dependecies NSS & NSPR
cd /src
hg clone https://hg.mozilla.org/projects/nss
hg clone https://hg.mozilla.org/projects/nspr
./nss/build.sh --static -Ddisable_tests=1 -o

#installing Neqoquic
git clone https://github.com/feters/neqo.git
cd /src/neqo
export NSS_DIR=/src/nss
export NSPR_DIR=/src/nspr
export LD_LIBRARY_PATH=/src/dist/Debug/lib
RUSTFLAGS="-C link-arg=-fuse-ld=lld" cargo build -v --all-targets --tests
RUSTFLAGS="-g -C link-arg=-fuse-ld=lld" cargo build -v --release --bin neqo-server

#creating required directories
mkdir server_files /src/server_qlog /src/server_log
cp /src/neqo/test-fixture/db/* /src/neqo/server_files

#creating server test files
cd /src/neqo/server_files
base64 /dev/urandom | head -c 2M > 2MB.txt
base64 /dev/urandom | head -c 10M > 10MB.txt
base64 /dev/urandom | head -c 100M > 100MB.txt

#creating server Qlog subdir
cd /src/server_qlog
mkdir -p 2MB/users1 2MB/users100 2MB/users500 2MB/users1000
cp -r 2MB 10MB
cp -r 2MB 100MB

cd /src/server_log
mkdir morning afternoon evening

timedatectl set-timezone Europe/Stockholm
hostnamectl set-hostname neqo_server