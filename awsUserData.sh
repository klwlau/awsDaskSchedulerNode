#!/bin/bash -x

#check log using tail -n 100 /var/log/syslog
#check full log using cat /var/log/syslog

sleep 10

cd /home/ubuntu
git clone https://github.com/klwlau/awsDaskSchedulerNode

cd awsDaskSchedulerNode
bash setup.sh