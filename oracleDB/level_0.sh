logfile=`date +%Y%m%d_%H:%M:%S`_level0.log 
#datestart=`date +%Y%m%d_%H:%M:%S`
export ORACLE_SID=talentcdb
#export NLS_DATE_FORMAT="yyyy-mm-dd hh24:mi:ss"
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
export PATH=$ORACLE_HOME/bin:$PATH
rman target / nocatalog cmdfile /backup/level_0.rman log /backup/level_0/$logfile
#datefinish=`date +%Y%m%d_%H:%M:%S`
#echo "$datestart $datefinish"
exit
