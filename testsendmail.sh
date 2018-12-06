#!/usr/bin/ksh

#@Sameera Silva
#2014/11/04

. ~/.profile

 . /home/ibmusr2/scripts/test.sh | mail -s"NDB `hostname` lpar info `date`" ibmsam2014@gmail.com;
