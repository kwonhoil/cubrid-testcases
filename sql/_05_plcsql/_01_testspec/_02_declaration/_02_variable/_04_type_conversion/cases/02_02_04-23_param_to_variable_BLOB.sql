--+ server-message on

create or replace procedure print_message(print_message string ) as begin
    dbms_output.put_line( print_message ); 
end;


call print_message('t_DATETIME_BLOB. This scenario is a failure.');
create or replace procedure t_DATETIME_BLOB(param_type string, variables_type string, param DATETIME ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIME_BLOB('DATETIME', 'BLOB', DATETIME'2023-02-14 10:51:28.999' ) ;
drop procedure t_DATETIME_BLOB ;


call print_message('t_DATETIMELTZ_BLOB. This scenario is a failure.');
create or replace procedure t_DATETIMELTZ_BLOB(param_type string, variables_type string, param DATETIMELTZ ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIMELTZ_BLOB('DATETIMELTZ', 'BLOB', datetimeltz '09/01/2009 01:10:10 pm' ) ;
drop procedure t_DATETIMELTZ_BLOB ;


call print_message('t_DATETIMETZ_BLOB. This scenario is a failure.');
create or replace procedure t_DATETIMETZ_BLOB(param_type string, variables_type string, param DATETIMETZ ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIMETZ_BLOB('DATETIMETZ', 'BLOB', datetimetz '09/01/2008 02:20:20 pm' ) ;
drop procedure t_DATETIMETZ_BLOB ;


call print_message('t_DATE_BLOB. This scenario is a failure.');
create or replace procedure t_DATE_BLOB(param_type string, variables_type string, param DATE ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATE_BLOB('DATE', 'BLOB', DATE'2008-10-31' ) ;
drop procedure t_DATE_BLOB ;


call print_message('t_TIME_BLOB. This scenario is a failure.');
create or replace procedure t_TIME_BLOB(param_type string, variables_type string, param TIME ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIME_BLOB('TIME', 'BLOB', TIME'13:15:45' ) ;
drop procedure t_TIME_BLOB ;


call print_message('t_TIMESTAMP_BLOB. This scenario is a failure.');
create or replace procedure t_TIMESTAMP_BLOB(param_type string, variables_type string, param TIMESTAMP ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMP_BLOB('TIMESTAMP', 'BLOB', TIMESTAMP'2023-10-31 13:15:45' ) ;
drop procedure t_TIMESTAMP_BLOB ;


call print_message('t_TIMESTAMPLTZ_BLOB. This scenario is a failure.');
create or replace procedure t_TIMESTAMPLTZ_BLOB(param_type string, variables_type string, param TIMESTAMPLTZ ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMPLTZ_BLOB('TIMESTAMPLTZ', 'BLOB', timestamptz '09/01/2007 03:30:30 pm' ) ;
drop procedure t_TIMESTAMPLTZ_BLOB ;


call print_message('t_TIMESTAMPTZ_BLOB. This scenario is a failure.');
create or replace procedure t_TIMESTAMPTZ_BLOB(param_type string, variables_type string, param TIMESTAMPTZ ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMPTZ_BLOB('TIMESTAMPTZ', 'BLOB', timestamptz '09/01/2006 04:40:40 pm' ) ;
drop procedure t_TIMESTAMPTZ_BLOB ;


call print_message('t_DOUBLE_BLOB. This scenario is a failure.');
create or replace procedure t_DOUBLE_BLOB(param_type string, variables_type string, param DOUBLE ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DOUBLE_BLOB('DOUBLE', 'BLOB', cast( 1234.56789 as double) ) ;
drop procedure t_DOUBLE_BLOB ;


call print_message('t_FLOAT_BLOB. This scenario is a failure.');
create or replace procedure t_FLOAT_BLOB(param_type string, variables_type string, param FLOAT ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_FLOAT_BLOB('FLOAT', 'BLOB', cast( 1677.217 as float ) ) ;
drop procedure t_FLOAT_BLOB ;


call print_message('t_NUMERIC(8,4)_BLOB. This scenario is a failure.');
create or replace procedure t_NUMERIC_BLOB(param_type string, variables_type string, param NUMERIC(8,4) ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_NUMERIC_BLOB('NUMERIC(8,4)', 'BLOB', cast( 0.123456789 as numeric(4,4) ) ) ;
drop procedure t_NUMERIC_BLOB ;


call print_message('t_BIGINT_BLOB. This scenario is a failure.');
create or replace procedure t_BIGINT_BLOB(param_type string, variables_type string, param BIGINT ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BIGINT_BLOB('BIGINT', 'BLOB', decode('BLOB', 'INT',cast( 34589012 as bigint ) /1000, 'SHORT', cast( 34589012 as bigint ) /10000, 'NUMERIC(8,4)', cast( 34589012 as bigint ) /10000, cast( 34589012 as bigint ) )  ) ;
drop procedure t_BIGINT_BLOB ;


call print_message('t_INT_BLOB. This scenario is a failure.');
create or replace procedure t_INT_BLOB(param_type string, variables_type string, param INT ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_INT_BLOB('INT', 'BLOB', decode('BLOB', 'INT',cast( 782346 as int ) /1000, 'SHORT', cast( 782346 as int ) /10000, 'NUMERIC(8,4)', cast( 782346 as int ) /10000, cast( 782346 as int ) )  ) ;
drop procedure t_INT_BLOB ;


call print_message('t_SHORT_BLOB. This scenario is a failure.');
create or replace procedure t_SHORT_BLOB(param_type string, variables_type string, param SHORT ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_SHORT_BLOB('SHORT', 'BLOB', decode('BLOB', 'INT',cast( 8934 as short ) /1000, 'SHORT', cast( 8934 as short ) /10000, 'NUMERIC(8,4)', cast( 8934 as short ) /10000, cast( 8934 as short ) )  ) ;
drop procedure t_SHORT_BLOB ;


call print_message('t_BIT(8)_BLOB. This scenario is a failure.');
create or replace procedure t_BIT_BLOB(param_type string, variables_type string, param BIT(8) ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BIT_BLOB('BIT(8)', 'BLOB', 0xaa ) ;
drop procedure t_BIT_BLOB ;


call print_message('t_BIT VARYING_BLOB. This scenario is a failure.');
create or replace procedure t_BITVARYING_BLOB(param_type string, variables_type string, param BIT VARYING ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BITVARYING_BLOB('BIT VARYING', 'BLOB', 0xaa ) ;
drop procedure t_BITVARYING_BLOB ;


call print_message('t_CHAR_BLOB. This scenario is a failure.');
create or replace procedure t_CHAR_BLOB(param_type string, variables_type string, param CHAR ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_CHAR_BLOB('CHAR', 'BLOB', 0xaa ) ;
drop procedure t_CHAR_BLOB ;


call print_message('t_VARCHAR_BLOB. This scenario is a failure.');
create or replace procedure t_VARCHAR_BLOB(param_type string, variables_type string, param VARCHAR ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_VARCHAR_BLOB('VARCHAR', 'BLOB', 0xaa ) ;
drop procedure t_VARCHAR_BLOB ;


call print_message('t_SET_BLOB. This scenario is a failure.');
create or replace procedure t_SET_BLOB(param_type string, variables_type string, param SET ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_SET_BLOB('SET', 'BLOB', {'c','c','c','b','b','a'} ) ;
drop procedure t_SET_BLOB ;


call print_message('t_MULTISET_BLOB. This scenario is a failure.');
create or replace procedure t_MULTISET_BLOB(param_type string, variables_type string, param MULTISET ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_MULTISET_BLOB('MULTISET', 'BLOB', {'c','c','c','b','b','a'} ) ;
drop procedure t_MULTISET_BLOB ;


call print_message('t_LIST_BLOB. This scenario is a failure.');
create or replace procedure t_LIST_BLOB(param_type string, variables_type string, param LIST ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_LIST_BLOB('LIST', 'BLOB', {'c','c','c','b','b', 'a'} ) ;
drop procedure t_LIST_BLOB ;


call print_message('t_ENUM_BLOB. This scenario is a failure.');
create or replace procedure t_ENUM_BLOB(param_type string, variables_type string, param ENUM ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_ENUM_BLOB('ENUM', 'BLOB', 'yellow' ) ;
drop procedure t_ENUM_BLOB ;


call print_message('t_BLOB_BLOB. This scenario is a failure.');
create or replace procedure t_BLOB_BLOB(param_type string, variables_type string, param BLOB ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BLOB_BLOB('BLOB', 'BLOB', BIT_TO_BLOB(X'000010') ) ;
drop procedure t_BLOB_BLOB ;


call print_message('t_CLOB_BLOB. This scenario is a failure.');
create or replace procedure t_CLOB_BLOB(param_type string, variables_type string, param CLOB ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_CLOB_BLOB('CLOB', 'BLOB', CHAR_TO_CLOB('This is a Dog') ) ;
drop procedure t_CLOB_BLOB ;


call print_message('t_JSON_BLOB. This scenario is a failure.');
create or replace procedure t_JSON_BLOB(param_type string, variables_type string, param JSON ) as 
VAR BLOB := param ;
VAR1 BLOB  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_JSON_BLOB('JSON', 'BLOB', '{"a":1}' ) ;
drop procedure t_JSON_BLOB ;
drop procedure print_message;

--+ server-message off
