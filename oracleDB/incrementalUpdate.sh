logfile=`date +%Y%m%d_%H:%M:%S`_inUp.log
#datestart=`date +%Y%m%d_%H:%M:%S`
export ORACLE_SID=talentcdb
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
export PATH=$ORACLE_HOME/bin:$PATH
rman target / catalog rcat/foo@PDB_CAT log /backup/increUpdate/$logfile <<EOF
CONFIGURE CONTROLFILE AUTOBACKUP ON;
run {
recover copy of database with tag 'daily_inc';
backup incremental level 1 for recover of copy with tag 'daily_inc' database;
}

EOF
