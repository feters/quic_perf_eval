#!/bin/bash

#2MB
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users1 -l server_log/morning/server2MB_U1.log -F server_log/morning/server2MB_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users100 -l server_log/morning/server2MB_U100.log -F server_log/morning/server2MB_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users500 -l server_log/morning/server2MB_U500.log -F server_log/morning/server2MB_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/2MB/users1000 -l server_log/morning/server2MB_U1000.log -F server_log/morning/server2MB_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID

#10MB
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users1 -l server_log/morning/server10MB_U1.log -F server_log/morning/server10MB_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users100 -l server_log/morning/server10MB_U100.log -F server_log/morning/server10MB_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users500 -l server_log/morning/server10MB_U500.log -F server_log/morning/server10MB_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/10MB/users1000 -l server_log/morning/server10MB_U1000.log -F server_log/morning/server10MB_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID

#50MB
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users1 -l server_log/morning/server50MB_U1.log -F server_log/morning/server50MB_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users100 -l server_log/morning/server50MB_U100.log -F server_log/morning/server50MB_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users500 -l server_log/morning/server50MB_U500.log -F server_log/morning/server50MB_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/50MB/users1000 -l server_log/morning/server50MB_U1000.log -F server_log/morning/server50MB_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID

#100MB
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1 -l server_log/morning/server100MB_U1.log -F server_log/morning/server100MB_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users100 -l server_log/morning/server100MB_U100.log -F server_log/morning/server100MB_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users500 -l server_log/morning/server100MB_U500.log -F server_log/morning/server100MB_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1000 -l server_log/morning/server100MB_U1000.log -F server_log/morning/server100MB_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID

#500MB
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1 -l server_log/morning/server100MB_U1.log -F server_log/morning/server100MB_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users100 -l server_log/morning/server100MB_U100.log -F server_log/morning/server100MB_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users500 -l server_log/morning/server100MB_U500.log -F server_log/morning/server100MB_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/100MB/users1000 -l server_log/morning/server100MB_U1000.log -F server_log/morning/server100MB_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID

#1G
ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users1 -l server_log/morning/server1G_U1.log -F server_log/morning/server1G_U1.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users100 -l server_log/morning/server1G_U100.log -F server_log/morning/server1G_U100.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users500 -l server_log/morning/server1G_U500.log -F server_log/morning/server1G_U500.csv -L -G cubic &
PID=$!
kill -9 $PID

ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -k server_certs/server-key.pem -c server_certs/ca-cert.pem -p 4433 -S server_files -q server_qlog/morning/1G/users1000 -l server_log/morning/server1G_U1000.log -F server_log/morning/server1G_U1000.csv -L -G cubic &
PID=$!
kill -9 $PID