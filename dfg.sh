#!/usr/bin/ksh

# @ruwindada

. ~/.profile

#who /etc/security/failedlogin | tail -n 60 | grep "`date | awk '{print ($2),($3)}'`";

#who /var/adm/wtmp | tail -n 60 | grep "`date | awk '{print ($2),($3)}'`";

#last | head -n 60 | grep "`date | awk '{print ($2),($3)}'`";

echo "==== File Systems exceeded 75% ===============================================";
df -g | awk 'int($4) > 75 {print ($4),($7)}';

