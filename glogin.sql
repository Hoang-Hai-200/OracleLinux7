--
-- Copyright (c) 1988, 2005, Oracle.  All Rights Reserved.
--
-- NAME
--   glogin.sql
--
-- DESCRIPTION
--   SQL*Plus global login "site profile" file
--
--   Add any SQL*Plus commands here that are to be executed when a
--   user starts SQL*Plus, or uses the SQL*Plus CONNECT command.
--
-- USAGE
--   This script is automatically run
--
--

set pages 100
set lines 200
set tab off
SET HISTORY ON
REM set timing on 
set time on
set wrap off
set term off
col sid new_value sid_new
col con_name new_value con_name_new

SELECT sys_context('userenv','sid') as sid
FROM sys.dual;

select global_name  as con_name
FROM global_name;
prompt con_name

set term on

def _C_RESET        =[0m
-- _C_RESET can be simply  =[m

def _C_BOLD         =[1m
def _C_BOLD_OFF     =[21m

def _C_UNDERLINE    =[4m
def _C_UNDERLINE_OFF=[24m

def _C_BLINK        =[5m
def _C_BLINK_OFF    =[25m

def _C_REVERSE      =[7m
def _C_REVERSE_OFF  =[27m

def _C_HIDE         =[8m
def _C_HIDE_OFF     =[28m

def _C_BLACK        =[30m
def _C_RED          =[31m
REM def _C_GREEN        =[32m
def _C_GREEN        =[92m
def _C_YELLOW       =[33m
def _C_BLUE         =[34m
def _C_MAGENTA      =[35m
def _C_CYAN         =[36m
def _C_WHITE        =[37m
def _C_DEFAULT      =[39m

def _CB_BLACK       =[40m
def _CB_RED         =[41m
def _CB_GREEN       =[42m
def _CB_YELLOW      =[43m
def _CB_BLUE        =[44m
def _CB_MAGENTA     =[45m
def _CB_CYAN        =[46m
def _CB_WHITE       =[47m
def _CB_DEFAULT     =[49m

REM just addition variables for convenience:
def _ESC            =
def _CLS            =[2J

set sqlprompt  "&_C_GREEN _user'-'sid_new'-'con_name_new'>'&_C_RESET "
REM set sqlprompt  "_user'-'sid_new'-'con_name_new'>'"
-- set sqlprompt "_user'-'sid_new>>> "

REM Code 	Effect
REM ***********************************************************************
REM 0       Turn off all attributes
REM 1       Set bright mode
REM 4       Set underline mode
REM 5       Set blink mode
REM 7       Exchange foreground and background colors
REM 8       Hide text (foreground color would be the same as background)
REM ***********************************************************************
REM     COLORS:
REM 30      Black text
REM 31      Red text
REM 32      Green text
REM 33      Yellow text
REM 34      Blue text
REM 35      Magenta text
REM 36      Cyan text
REM 37      White text
REM 39      Default text color
REM ***********************************************************************
REM     Background COLORS:
REM 40      Black background
REM 41      Red background
REM 42      Green background
REM 43      Yellow background
REM 44      Blue background
REM 45      Magenta background
REM 46      Cyan background
REM 47      White background
REM 49      Default background color
REM ***********************************************************************

