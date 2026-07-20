export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export PATH=$PATH:$ORACLE_HOME/bin:$ORACLE_HOME/OPatch
export ORACLE_SID=orclcdb
export ORACLE_UNQNAME=$ORACLE_SID
export ORACLE_BASE=/u01/app/oracle

echo "========================================"
echo "Stopping Oracle Database ($ORACLE_SID)..."
echo "========================================"
sqlplus -s / as sysdba <<EOF
shutdown immediate;
exit;
EOF

echo ""
echo "========================================"
echo "Stopping Oracle Listener..."
echo "========================================"
lsnrctl stop

echo "========================================"
echo "Database and Listener stopped!"
echo "========================================"
