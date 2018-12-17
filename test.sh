#!/usr/bin/ksh

#@Sameera Silva
#2014/11/04

. ~/.profile


echo "\n LPAR Information";
echo "\n"; ifconfig -a | egrep -i "inet";
echo "\n************************************************************************";
echo "\n"; lparstat -i | head -n 3;
echo "\n************************************************************************";
echo "\n"; errpt -d H | head -n6;
echo "\n************************************************************************";

echo "\n==== File Systems exceeded 75% ===============================================";
df -g | awk 'int($4) > 75 {print ($4),($7)}';
