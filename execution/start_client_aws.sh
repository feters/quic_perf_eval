#!/bin/bash

users=1
server=13.49.228.37
type=pico
port=4433
iteration=40
daytest=morning
#downpath="client_download"
#filename=10m.txt

while getopts :z:u:s:t:p:d:f:i: opt; do
        case $opt in
                - z | --daytest ) daytest=$OPTARG;;
                - u | --users ) users=$OPTARG;;
                - s | --server ) server=$OPTARG;;
                - t | --type ) type=$OPTARG;;
                - p | --port ) port=$OPTARG;;
                - d | --downpath ) downpath=$OPTARG;;
                - f | --filesize ) filesize=$OPTARG;;
                - i | --iteration ) iteration=$OPTARG;;
        esac
done

for ((i=1; i<=$iteration; i++))
do
        for ((u=1; u<=$users; u++))
        do
                #QUICHE
                ionice -c 2 -n 0 nice -n -20 ./picoquicdemo -a h3 -q /src/$daytest/log_$type/$filesize/users$users/it$i -l /src/$daytest/log_$type/log_cl_$filesize$users.log -F /src/$daytest/log_$type/perf_log_cl_$filesize$users.csv -L -o client_download/$type $server $port "*1:0:-:$filesize.txt;" &
        done
        wait
done

echo Scenario $users Users download $filesize $iteration iteration
