#!/bin/bash
x=10
while [ $x -gt 0 ]
do
sleep 1s
clear
echo "$x seconds until the service start"
x=$(( $x - 1 ))
done

docker-compose up contain1
