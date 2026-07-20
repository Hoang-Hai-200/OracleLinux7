export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export PATH=$PATH:$ORACLE_HOME/bin:$ORACLE_HOME/OPatch
export ORACLE_SID=orclcdb
export ORACLE_UNQNAME=$ORACLE_SID
export ORACLE_BASE=/u01/app/oracle


echo "========================================"
echo "Starting Oracle Listener..."
echo "========================================"
lsnrctl start

echo ""
echo "========================================"
echo "Starting Oracle Database ($ORACLE_SID) & PDBs..."
echo "========================================"
sqlplus -s / as sysdba <<EOF
startup;
exit;
EOF

echo "========================================"
echo "Database and Listener started!"
echo "========================================"
