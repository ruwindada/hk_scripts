#!/usr/bin/ksh

# @ruwindada - 210611 / 124154

. ~/.profile

echo "\n==========LIST OF DISK'S===================="; 
lsdev -Cc disk; 
echo "\n==========LIST OF PV'S======================"; 
lspv;
echo "\n==========LIST OF LV'S======================"; 
lsvg -o | lsvg -li | grep -v "N/A";
echo "\n==========VG LV Space Utilization==========="; 
lsvg rootvg t24havg hbvg | egrep "VOLUME GROUP|TOTAL PPs|FREE PPs";
