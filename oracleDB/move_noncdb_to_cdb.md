IN NON_CDB

1.active non_CDB in mode read only

2. create file xml descr non_cdb
	exec dbms_pdb.describe(pdb_descr_file => '  .xml'
3. shut immediate

IN CDB
3. check compatibility of non_cdb in cdb

    declare
    	compatible constant varchar2(3) := case 
	    dbms_pdb.check_plug_compatibility(pdb_descr_file => '/tmp/olddb.xml',pdb_name => 'pdb_old')
    		when true then 'YES'
    		else 'No'
    	end;
    begin 
        dbms_output.put_line(compatible);
    end;

4.create pluggable database pdb_old using 'link_file_xml'

5.alter session set container = pdb_old;

6. @$ORACLE_HOME/rdbms/admin/noncdb_to_pdb

7.alter pluggable database open;
