#!/usr/bin/ksh

# @ruwindada

. ~/.profile

echo "                                                                              ";
echo "==== Invalid Login Attempts ==================================================";
who /etc/security/failedlogin | tail -n 60 ;
echo "==============================================================================";
#who /etc/security/failedlogin | tail -n 60 | grep "`date | awk '{print ($2),($3)}'`" ;
who /etc/security/failedlogin | tail -n 60 | grep "`echo $DATE | awk '{print ($2),($3)}'`";

#who /var/adm/wtmp | tail -n 60 | grep "`date | awk '{print ($2),($3)}'`";

#last | head -n 60 | grep "`date | awk '{print ($2),($3)}'`";

#df -g | awk 'int($4) > 75 {print ($4),($7)}';

