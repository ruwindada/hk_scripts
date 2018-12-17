#!/usr/bin/ksh

####################################################################
#
# FILE NAME: bkup.log.chk.sh
#
# FILE DESCRIPTION: Shell script to inspect backup log.
#
# AUTHOR: Ruwinda Fernando
#
# CREATED: November 14, 2011
#
####################################################################

. ~/.profile

if [ -f /IBM/logs/daily_fullbkp-`date "+%y%m%d"`.log ]
        then
                echo "\nlkwsawbis2 Daily Full backup log Exists. Going through ....."
                echo "============================================="
                tail -n 20 /IBM/logs/daily_fullbkp-`date "+%y%m%d"`.log

        elif [ -f /IBM/logs/ME_fullbkp-`date "+%y%m%d"`.log ]
        then
                echo "\nlkwsawbis2 Monthly Full backup log Exists. Going through ....."
                echo "============================================="
                tail -n 20 /IBM/logs/daily_fullbkp-`date "+%y%m%d"`.log
        else
                echo "lkwsawbis2 backup log doesn't Exist. Please examine dsmerror.log."
                echo "Locate 'dsmerror.log' - find / -name dsmerror.log -exec ls -ltr {} \;.\n"
                echo "Note:- First check cron job scheduled date/time ($DATE) against backup initiated date/time.\n"
fi
