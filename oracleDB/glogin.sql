

--┌─ (/u01/app/oracle/product/19.0.0/dbhome_1/sqlplus/admin)->
--└─ $ cat glogin.sql

set pages 100
set lines 1000
set tab off
SET HISTORY ON
set timing on
set time on

set term off

col sid new_value sid_new
col con_name new_value con_name_new

SELECT sys_context('userenv','sid') as sid
FROM sys.dual;

select global_name  as con_name
FROM global_name;

prompt con_name
set sqlprompt "_user'-'sid_new'-'con_name_new'>>> '"
-- set sqlprompt "_user'-'sid_new>>> "
set term on
