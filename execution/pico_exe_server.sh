#!/bin/bash

#2MB
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_2MB_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users1 -l server_log/morning/server2MB_U1.log -F server_log/morning/server2MB_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_2MB_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users50 -l server_log/morning/server2MB_U50.log -F server_log/morning/server2MB_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_2MB_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users100 -l server_log/morning/server2MB_U100.log -F server_log/morning/server2MB_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_2MB_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users500 -l server_log/morning/server2MB_U500.log -F server_log/morning/server2MB_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_2MB_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users1000 -l server_log/morning/server2MB_U1000.log -F server_log/morning/server2MB_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

#BREAK
sleep 1m

#10MB
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_10MB_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users1 -l server_log/morning/server10MB_U1.log -F server_log/morning/server10MB_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_10MB_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users50 -l server_log/morning/server10MB_U50.log -F server_log/morning/server10MB_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_10MB_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users100 -l server_log/morning/server10MB_U100.log -F server_log/morning/server10MB_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_10MB_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users500 -l server_log/morning/server10MB_U500.log -F server_log/morning/server10MB_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_10MB_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users1000 -l server_log/morning/server10MB_U1000.log -F server_log/morning/server10MB_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

#BREAK
sleep 1m

#50MB
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_50MB_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users1 -l server_log/morning/server50MB_U1.log -F server_log/morning/server50MB_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_50MB_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users50 -l server_log/morning/server50MB_U50.log -F server_log/morning/server50MB_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_50MB_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users100 -l server_log/morning/server50MB_U100.log -F server_log/morning/server50MB_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_50MB_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users500 -l server_log/morning/server50MB_U500.log -F server_log/morning/server50MB_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_50MB_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users1000 -l server_log/morning/server50MB_U1000.log -F server_log/morning/server50MB_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

#BREAK
sleep 1m

#100MB
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_100MB_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1 -l server_log/morning/server100MB_U1.log -F server_log/morning/server100MB_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_100MB_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users50 -l server_log/morning/server100MB_U50.log -F server_log/morning/server100MB_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_100MB_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users100 -l server_log/morning/server100MB_U100.log -F server_log/morning/server100MB_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_100MB_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users500 -l server_log/morning/server100MB_U500.log -F server_log/morning/server100MB_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_100MB_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1000 -l server_log/morning/server100MB_U1000.log -F server_log/morning/server100MB_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

#BREAK
sleep 1m

#500MB
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_500MB_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/500MB/users1 -l server_log/morning/server500MB_U1.log -F server_log/morning/server500MB_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_500MB_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/500MB/users50 -l server_log/morning/server500MB_U50.log -F server_log/morning/server500MB_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_500MB_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/500MB/users100 -l server_log/morning/server500MB_U100.log -F server_log/morning/server500MB_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_500MB_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/500MB/users500 -l server_log/morning/server500MB_U500.log -F server_log/morning/server500MB_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_500MB_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/500MB/users1000 -l server_log/morning/server500MB_U1000.log -F server_log/morning/server500MB_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

#BREAK
sleep 1m

#1G
cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_1G_U1.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users1 -l server_log/morning/server1G_U1.log -F server_log/morning/server1G_U1.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 20 --csv=ptop_pico_1G_U50.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users50 -l server_log/morning/server1G_U50.log -F server_log/morning/server1G_U50.csv -L -G cubic &
PID=$!
sleep 20s
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 60 --csv=ptop_pico_1G_U100.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users100 -l server_log/morning/server1G_U100.log -F server_log/morning/server1G_U100.csv -L -G cubic &
PID=$!
sleep 1m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_1G_U500.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users500 -l server_log/morning/server1G_U500.log -F server_log/morning/server1G_U500.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID

cd /src/ptop
powertop --sample=1 -t 180 --csv=ptop_pico_1G_U1000.csv &
cd /src/picoquic
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users1000 -l server_log/morning/server1G_U1000.log -F server_log/morning/server1G_U1000.csv -L -G cubic &
PID=$!
sleep 3m
kill -9 $PID