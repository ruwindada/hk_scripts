#!/usr/bin/ksh

# @ruwindada

. ~/.profile

sleep 10

/usr/bin/iostat -aDTl 2 43200 >> /IBM/iostat/T24_APP_iostat-$DATE1 &

/usr/bin/vmstat -wt 30 2880 >> /IBM/vmstat/T24_APP_vmstat-$DATE1 &

