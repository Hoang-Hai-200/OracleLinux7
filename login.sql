set sqlformat ansiconsole 
set highlighting on
set highlighting keyword foreground green
set highlighting identifier foreground magenta
set highlighting string foreground yellow
set highlighting number foreground cyan
set highlighting comment background white
set highlighting comment foreground black 
  
set termout off
set exitcommit off
COLUMN sid NEW_VALUE _sid
SELECT sys_context('userenv','sid') sid FROM dual;
set termout on
set SQLPROMPT "@|white,bold &_user|@@|white :&_sid|@@|red _CONNECT_IDENTIFIER|@ @|white >|@ "

set time on
set statusbar on
set statusbar add txn
set statusbar add timing
set statusbar add cwd
