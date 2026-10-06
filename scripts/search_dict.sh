#!/bin/bash

# Kiểm tra xem người dùng có truyền tham số hay không
if [ -z "$1" ]; then
  echo "USE : ./search_dict.sh <từ_khóa>"
  echo "EX: ./search_dict.sh ARCHIVE"
  exit 1
fi

# Gọi SQL*Plus ở chế độ im lặng (-s) và truyền lệnh SQL qua Here Document
sqlplus -s / as sysdba <<EOF
set pages 100
set heading off
set linesize 200
set feedback off
col COMMENTS format a100
col TABLE_NAME format a40

select table_name, comments 
from dictionary 
where table_name like upper('%${1}%');

exit;
EOF
