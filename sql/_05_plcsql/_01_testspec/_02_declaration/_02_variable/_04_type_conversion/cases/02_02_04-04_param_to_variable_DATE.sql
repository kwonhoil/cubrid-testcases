--+ server-message on

create or replace procedure print_message(print_message string ) as begin
    dbms_output.put_line( print_message ); 
end;


call print_message('t_DATETIME_DATE. This scenario is a success.');
create or replace procedure t_DATETIME_DATE(param_type string, variables_type string, param DATETIME ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIME_DATE('DATETIME', 'DATE', DATETIME'2023-02-14 10:51:28.999' ) ;
drop procedure t_DATETIME_DATE ;


call print_message('t_DATETIMELTZ_DATE. This scenario is a failure.');
create or replace procedure t_DATETIMELTZ_DATE(param_type string, variables_type string, param DATETIMELTZ ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIMELTZ_DATE('DATETIMELTZ', 'DATE', datetimeltz '09/01/2009 01:10:10 pm' ) ;
drop procedure t_DATETIMELTZ_DATE ;


call print_message('t_DATETIMETZ_DATE. This scenario is a failure.');
create or replace procedure t_DATETIMETZ_DATE(param_type string, variables_type string, param DATETIMETZ ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATETIMETZ_DATE('DATETIMETZ', 'DATE', datetimetz '09/01/2008 02:20:20 pm' ) ;
drop procedure t_DATETIMETZ_DATE ;


call print_message('t_DATE_DATE. This scenario is a success.');
create or replace procedure t_DATE_DATE(param_type string, variables_type string, param DATE ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DATE_DATE('DATE', 'DATE', DATE'2008-10-31' ) ;
drop procedure t_DATE_DATE ;


call print_message('t_TIME_DATE. This scenario is a failure.');
create or replace procedure t_TIME_DATE(param_type string, variables_type string, param TIME ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIME_DATE('TIME', 'DATE', TIME'13:15:45' ) ;
drop procedure t_TIME_DATE ;


call print_message('t_TIMESTAMP_DATE. This scenario is a success.');
create or replace procedure t_TIMESTAMP_DATE(param_type string, variables_type string, param TIMESTAMP ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMP_DATE('TIMESTAMP', 'DATE', TIMESTAMP'2023-10-31 13:15:45' ) ;
drop procedure t_TIMESTAMP_DATE ;


call print_message('t_TIMESTAMPLTZ_DATE. This scenario is a failure.');
create or replace procedure t_TIMESTAMPLTZ_DATE(param_type string, variables_type string, param TIMESTAMPLTZ ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMPLTZ_DATE('TIMESTAMPLTZ', 'DATE', timestamptz '09/01/2007 03:30:30 pm' ) ;
drop procedure t_TIMESTAMPLTZ_DATE ;


call print_message('t_TIMESTAMPTZ_DATE. This scenario is a failure.');
create or replace procedure t_TIMESTAMPTZ_DATE(param_type string, variables_type string, param TIMESTAMPTZ ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_TIMESTAMPTZ_DATE('TIMESTAMPTZ', 'DATE', timestamptz '09/01/2006 04:40:40 pm' ) ;
drop procedure t_TIMESTAMPTZ_DATE ;


call print_message('t_DOUBLE_DATE. This scenario is a failure.');
create or replace procedure t_DOUBLE_DATE(param_type string, variables_type string, param DOUBLE ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_DOUBLE_DATE('DOUBLE', 'DATE', cast( 1234.56789 as double) ) ;
drop procedure t_DOUBLE_DATE ;


call print_message('t_FLOAT_DATE. This scenario is a failure.');
create or replace procedure t_FLOAT_DATE(param_type string, variables_type string, param FLOAT ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_FLOAT_DATE('FLOAT', 'DATE', cast( 1677.217 as float ) ) ;
drop procedure t_FLOAT_DATE ;


call print_message('t_NUMERIC(8,4)_DATE. This scenario is a failure.');
create or replace procedure t_NUMERIC_DATE(param_type string, variables_type string, param NUMERIC(8,4) ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_NUMERIC_DATE('NUMERIC(8,4)', 'DATE', cast( 0.123456789 as numeric(4,4) ) ) ;
drop procedure t_NUMERIC_DATE ;


call print_message('t_BIGINT_DATE. This scenario is a failure.');
create or replace procedure t_BIGINT_DATE(param_type string, variables_type string, param BIGINT ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BIGINT_DATE('BIGINT', 'DATE', decode('DATE', 'INT',cast( 34589012 as bigint ) /1000, 'SHORT', cast( 34589012 as bigint ) /10000, 'NUMERIC(8,4)', cast( 34589012 as bigint ) /10000, cast( 34589012 as bigint ) )  ) ;
drop procedure t_BIGINT_DATE ;


call print_message('t_INT_DATE. This scenario is a failure.');
create or replace procedure t_INT_DATE(param_type string, variables_type string, param INT ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_INT_DATE('INT', 'DATE', decode('DATE', 'INT',cast( 782346 as int ) /1000, 'SHORT', cast( 782346 as int ) /10000, 'NUMERIC(8,4)', cast( 782346 as int ) /10000, cast( 782346 as int ) )  ) ;
drop procedure t_INT_DATE ;


call print_message('t_SHORT_DATE. This scenario is a failure.');
create or replace procedure t_SHORT_DATE(param_type string, variables_type string, param SHORT ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_SHORT_DATE('SHORT', 'DATE', decode('DATE', 'INT',cast( 8934 as short ) /1000, 'SHORT', cast( 8934 as short ) /10000, 'NUMERIC(8,4)', cast( 8934 as short ) /10000, cast( 8934 as short ) )  ) ;
drop procedure t_SHORT_DATE ;


call print_message('t_BIT(8)_DATE. This scenario is a failure.');
create or replace procedure t_BIT_DATE(param_type string, variables_type string, param BIT(8) ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BIT_DATE('BIT(8)', 'DATE', 0xaa ) ;
drop procedure t_BIT_DATE ;


call print_message('t_BIT VARYING_DATE. This scenario is a failure.');
create or replace procedure t_BITVARYING_DATE(param_type string, variables_type string, param BIT VARYING ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BITVARYING_DATE('BIT VARYING', 'DATE', 0xaa ) ;
drop procedure t_BITVARYING_DATE ;


call print_message('t_CHAR_DATE. This scenario is a success.');
create or replace procedure t_CHAR_DATE(param_type string, variables_type string, param CHAR ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_CHAR_DATE('CHAR', 'DATE', cast( '09/01/2005' as char(10) ) ) ;
drop procedure t_CHAR_DATE ;


call print_message('t_VARCHAR_DATE. This scenario is a success.');
create or replace procedure t_VARCHAR_DATE(param_type string, variables_type string, param VARCHAR ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_VARCHAR_DATE('VARCHAR', 'DATE', cast( '09/01/2019' as varchar(10) ) ) ;
drop procedure t_VARCHAR_DATE ;


call print_message('t_SET_DATE. This scenario is a failure.');
create or replace procedure t_SET_DATE(param_type string, variables_type string, param SET ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_SET_DATE('SET', 'DATE', {'c','c','c','b','b','a'} ) ;
drop procedure t_SET_DATE ;


call print_message('t_MULTISET_DATE. This scenario is a failure.');
create or replace procedure t_MULTISET_DATE(param_type string, variables_type string, param MULTISET ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_MULTISET_DATE('MULTISET', 'DATE', {'c','c','c','b','b','a'} ) ;
drop procedure t_MULTISET_DATE ;


call print_message('t_LIST_DATE. This scenario is a failure.');
create or replace procedure t_LIST_DATE(param_type string, variables_type string, param LIST ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_LIST_DATE('LIST', 'DATE', {'c','c','c','b','b', 'a'} ) ;
drop procedure t_LIST_DATE ;


call print_message('t_ENUM_DATE. This scenario is a failure.');
create or replace procedure t_ENUM_DATE(param_type string, variables_type string, param ENUM ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_ENUM_DATE('ENUM', 'DATE', 'yellow' ) ;
drop procedure t_ENUM_DATE ;


call print_message('t_BLOB_DATE. This scenario is a failure.');
create or replace procedure t_BLOB_DATE(param_type string, variables_type string, param BLOB ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_BLOB_DATE('BLOB', 'DATE', BIT_TO_BLOB(X'000010') ) ;
drop procedure t_BLOB_DATE ;


call print_message('t_CLOB_DATE. This scenario is a failure.');
create or replace procedure t_CLOB_DATE(param_type string, variables_type string, param CLOB ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_CLOB_DATE('CLOB', 'DATE', CHAR_TO_CLOB('This is a Dog') ) ;
drop procedure t_CLOB_DATE ;


call print_message('t_JSON_DATE. This scenario is a failure.');
create or replace procedure t_JSON_DATE(param_type string, variables_type string, param JSON ) as 
VAR DATE := param ;
VAR1 DATE  ;
begin
VAR1 := VAR ;
    dbms_output.put_line('param_type = ' ||param_type ||', variables_type = '||variables_type||', param=>variables = '|| VAR ); 
    dbms_output.put_line('variables=>variables = ' || VAR1  ); 
end;
call t_JSON_DATE('JSON', 'DATE', '{"a":1}' ) ;
drop procedure t_JSON_DATE ;
drop procedure print_message;

--+ server-message off
