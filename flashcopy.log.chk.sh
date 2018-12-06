#!/usr/bin/ksh

####################################################################
#
# FILE NAME: flashcopy.log.chk.sh 
#
# FILE DESCRIPTION: Shell script to inspect FlashCopy initiation log. 
#
# AUTHOR: Ruwinda Fernando
#
# CREATED: May 10, 2011
#
####################################################################

. ~/.profile

#$DATE=`date "+%d%m%y"`

if [ -f /IBM/logs/initCopy-`date "+%d%m%y"`.log ]
then
        echo "\nlkasatcap1 FlashCopy init log Exists. Going through ....."
        echo "============================================="
        cat /IBM/logs/initCopy-`date "+%d%m%y"`.log | egrep -i "error|fccnbl|lkasatcap1" 
else
        echo "lkasatcap1 init log doesn't Exist. Initiation of FlashCopy seems to have Failed.\n"
	echo "First check cron job scheduled date/time ($DATE) against FlashCopy initiated date/time.\n"
fi

