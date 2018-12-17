########################################
#!/usr/bin/ksh
# Script to pust t24_dchk stat to NIM
# @ruwindada - 07122011

cd ~ibmusr2/daily_check/; SCPFILE=`ls -ltr * | tail -n1 | awk '{print ($9)}'`; echo $SCPFILE;	#in respective LPAR
scp $SCPFILE ibmuser@192.168.68.101:/home/ibmuser/t24check/lkasatcap1; #rm $SCPFILE;		#from LPAR to NIM
########################################
