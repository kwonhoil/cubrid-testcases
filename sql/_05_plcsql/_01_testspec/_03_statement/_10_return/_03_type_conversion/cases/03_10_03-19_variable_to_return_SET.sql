--+ server-message on

create or replace procedure print_message(print_message string ) as begin
    dbms_output.put_line( print_message ); 
end;


call print_message('t_DATETIME_SET. This scenario is a failure.');
create or replace function t_DATETIME_SET(variables_type string, return_type string, param_value DATETIME ) RETURN SET IS 
   VAR DATETIME  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_DATETIME_SET('DATETIME', 'SET', DATETIME'2023-02-14 10:51:28.999' ), 
 typeof( t_DATETIME_SET('DATETIME', 'SET', DATETIME'2023-02-14 10:51:28.999' ) ) ;
drop function t_DATETIME_SET ;



call print_message('t_DATETIMELTZ_SET. This scenario is a failure.');
create or replace function t_DATETIMELTZ_SET(variables_type string, return_type string, param_value DATETIMELTZ ) RETURN SET IS 
   VAR DATETIMELTZ  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_DATETIMELTZ_SET('DATETIMELTZ', 'SET', datetimeltz '09/01/2009 01:10:10 pm' ), 
 typeof( t_DATETIMELTZ_SET('DATETIMELTZ', 'SET', datetimeltz '09/01/2009 01:10:10 pm' ) ) ;
drop function t_DATETIMELTZ_SET ;



call print_message('t_DATETIMETZ_SET. This scenario is a failure.');
create or replace function t_DATETIMETZ_SET(variables_type string, return_type string, param_value DATETIMETZ ) RETURN SET IS 
   VAR DATETIMETZ  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_DATETIMETZ_SET('DATETIMETZ', 'SET', datetimetz '09/01/2008 02:20:20 pm' ), 
 typeof( t_DATETIMETZ_SET('DATETIMETZ', 'SET', datetimetz '09/01/2008 02:20:20 pm' ) ) ;
drop function t_DATETIMETZ_SET ;



call print_message('t_DATE_SET. This scenario is a failure.');
create or replace function t_DATE_SET(variables_type string, return_type string, param_value DATE ) RETURN SET IS 
   VAR DATE  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_DATE_SET('DATE', 'SET', DATE'2008-10-31' ), 
 typeof( t_DATE_SET('DATE', 'SET', DATE'2008-10-31' ) ) ;
drop function t_DATE_SET ;



call print_message('t_TIME_SET. This scenario is a failure.');
create or replace function t_TIME_SET(variables_type string, return_type string, param_value TIME ) RETURN SET IS 
   VAR TIME  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_TIME_SET('TIME', 'SET', TIME'13:15:45' ), 
 typeof( t_TIME_SET('TIME', 'SET', TIME'13:15:45' ) ) ;
drop function t_TIME_SET ;



call print_message('t_TIMESTAMP_SET. This scenario is a failure.');
create or replace function t_TIMESTAMP_SET(variables_type string, return_type string, param_value TIMESTAMP ) RETURN SET IS 
   VAR TIMESTAMP  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_TIMESTAMP_SET('TIMESTAMP', 'SET', TIMESTAMP'2023-10-31 13:15:45' ), 
 typeof( t_TIMESTAMP_SET('TIMESTAMP', 'SET', TIMESTAMP'2023-10-31 13:15:45' ) ) ;
drop function t_TIMESTAMP_SET ;



call print_message('t_TIMESTAMPLTZ_SET. This scenario is a failure.');
create or replace function t_TIMESTAMPLTZ_SET(variables_type string, return_type string, param_value TIMESTAMPLTZ ) RETURN SET IS 
   VAR TIMESTAMPLTZ  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_TIMESTAMPLTZ_SET('TIMESTAMPLTZ', 'SET', timestamptz '09/01/2007 03:30:30 pm' ), 
 typeof( t_TIMESTAMPLTZ_SET('TIMESTAMPLTZ', 'SET', timestamptz '09/01/2007 03:30:30 pm' ) ) ;
drop function t_TIMESTAMPLTZ_SET ;



call print_message('t_TIMESTAMPTZ_SET. This scenario is a failure.');
create or replace function t_TIMESTAMPTZ_SET(variables_type string, return_type string, param_value TIMESTAMPTZ ) RETURN SET IS 
   VAR TIMESTAMPTZ  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_TIMESTAMPTZ_SET('TIMESTAMPTZ', 'SET', timestamptz '09/01/2006 04:40:40 pm' ), 
 typeof( t_TIMESTAMPTZ_SET('TIMESTAMPTZ', 'SET', timestamptz '09/01/2006 04:40:40 pm' ) ) ;
drop function t_TIMESTAMPTZ_SET ;



call print_message('t_DOUBLE_SET. This scenario is a failure.');
create or replace function t_DOUBLE_SET(variables_type string, return_type string, param_value DOUBLE ) RETURN SET IS 
   VAR DOUBLE  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_DOUBLE_SET('DOUBLE', 'SET', cast( 1234.56789 as double) ), 
 typeof( t_DOUBLE_SET('DOUBLE', 'SET', cast( 1234.56789 as double) ) ) ;
drop function t_DOUBLE_SET ;



call print_message('t_FLOAT_SET. This scenario is a failure.');
create or replace function t_FLOAT_SET(variables_type string, return_type string, param_value FLOAT ) RETURN SET IS 
   VAR FLOAT  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_FLOAT_SET('FLOAT', 'SET', cast( 16777.217 as float ) ), 
 typeof( t_FLOAT_SET('FLOAT', 'SET', cast( 16777.217 as float ) ) ) ;
drop function t_FLOAT_SET ;



call print_message('t_NUMERIC(8,4)_SET. This scenario is a failure.');
create or replace function t_NUMERIC_SET(variables_type string, return_type string, param_value NUMERIC ) RETURN SET IS 
   VAR NUMERIC(8,4)  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_NUMERIC_SET('NUMERIC(8,4)', 'SET', cast( 0.123456789 as numeric(4,4) ) ), 
 typeof( t_NUMERIC_SET('NUMERIC(8,4)', 'SET', cast( 0.123456789 as numeric(4,4) ) ) ) ;
drop function t_NUMERIC_SET ;



call print_message('t_BIGINT_SET. This scenario is a failure.');
create or replace function t_BIGINT_SET(variables_type string, return_type string, param_value BIGINT ) RETURN SET IS 
   VAR BIGINT  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_BIGINT_SET('BIGINT', 'SET', cast( 34589012 as bigint ) ), 
 typeof( t_BIGINT_SET('BIGINT', 'SET', cast( 34589012 as bigint ) ) ) ;
drop function t_BIGINT_SET ;



call print_message('t_INT_SET. This scenario is a failure.');
create or replace function t_INT_SET(variables_type string, return_type string, param_value INT ) RETURN SET IS 
   VAR INT  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_INT_SET('INT', 'SET', cast( 782346 as int ) ), 
 typeof( t_INT_SET('INT', 'SET', cast( 782346 as int ) ) ) ;
drop function t_INT_SET ;



call print_message('t_SHORT_SET. This scenario is a failure.');
create or replace function t_SHORT_SET(variables_type string, return_type string, param_value SHORT ) RETURN SET IS 
   VAR SHORT  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_SHORT_SET('SHORT', 'SET', cast( 8934 as short ) ), 
 typeof( t_SHORT_SET('SHORT', 'SET', cast( 8934 as short ) ) ) ;
drop function t_SHORT_SET ;



call print_message('t_BIT(8)_SET. This scenario is a failure.');
create or replace function t_BIT_SET(variables_type string, return_type string, param_value BIT ) RETURN SET IS 
   VAR BIT(8)  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_BIT_SET('BIT(8)', 'SET', 0xaa ), 
 typeof( t_BIT_SET('BIT(8)', 'SET', 0xaa ) ) ;
drop function t_BIT_SET ;



call print_message('t_BIT VARYING_SET. This scenario is a failure.');
create or replace function t_BITVARYING_SET(variables_type string, return_type string, param_value BITVARYING ) RETURN SET IS 
   VAR BIT VARYING  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_BITVARYING_SET('BIT VARYING', 'SET', 0xaa ), 
 typeof( t_BITVARYING_SET('BIT VARYING', 'SET', 0xaa ) ) ;
drop function t_BITVARYING_SET ;



call print_message('t_CHAR_SET. This scenario is a failure.');
create or replace function t_CHAR_SET(variables_type string, return_type string, param_value CHAR ) RETURN SET IS 
   VAR CHAR  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_CHAR_SET('CHAR', 'SET', {'c','c','c','b','b','a'} ), 
 typeof( t_CHAR_SET('CHAR', 'SET', {'c','c','c','b','b','a'} ) ) ;
drop function t_CHAR_SET ;



call print_message('t_VARCHAR_SET. This scenario is a failure.');
create or replace function t_VARCHAR_SET(variables_type string, return_type string, param_value VARCHAR ) RETURN SET IS 
   VAR VARCHAR  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_VARCHAR_SET('VARCHAR', 'SET', {'c','c','c','b','b','a'} ), 
 typeof( t_VARCHAR_SET('VARCHAR', 'SET', {'c','c','c','b','b','a'} ) ) ;
drop function t_VARCHAR_SET ;



call print_message('t_SET_SET. This scenario is a failure.');
create or replace function t_SET_SET(variables_type string, return_type string, param_value SET ) RETURN SET IS 
   VAR SET  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_SET_SET('SET', 'SET', {'c','c','c','b','b','a'} ), 
 typeof( t_SET_SET('SET', 'SET', {'c','c','c','b','b','a'} ) ) ;
drop function t_SET_SET ;



call print_message('t_MULTISET_SET. This scenario is a failure.');
create or replace function t_MULTISET_SET(variables_type string, return_type string, param_value MULTISET ) RETURN SET IS 
   VAR MULTISET  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_MULTISET_SET('MULTISET', 'SET', {'c','c','c','b','b','a'} ), 
 typeof( t_MULTISET_SET('MULTISET', 'SET', {'c','c','c','b','b','a'} ) ) ;
drop function t_MULTISET_SET ;



call print_message('t_LIST_SET. This scenario is a failure.');
create or replace function t_LIST_SET(variables_type string, return_type string, param_value LIST ) RETURN SET IS 
   VAR LIST  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_LIST_SET('LIST', 'SET', {'c','c','c','b','b', 'a'} ), 
 typeof( t_LIST_SET('LIST', 'SET', {'c','c','c','b','b', 'a'} ) ) ;
drop function t_LIST_SET ;



call print_message('t_ENUM_SET. This scenario is a failure.');
create or replace function t_ENUM_SET(variables_type string, return_type string, param_value ENUM ) RETURN SET IS 
   VAR ENUM  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_ENUM_SET('ENUM', 'SET', 'yellow' ), 
 typeof( t_ENUM_SET('ENUM', 'SET', 'yellow' ) ) ;
drop function t_ENUM_SET ;



call print_message('t_BLOB_SET. This scenario is a failure.');
create or replace function t_BLOB_SET(variables_type string, return_type string, param_value BLOB ) RETURN SET IS 
   VAR BLOB  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_BLOB_SET('BLOB', 'SET', BIT_TO_BLOB(X'000010') ), 
 typeof( t_BLOB_SET('BLOB', 'SET', BIT_TO_BLOB(X'000010') ) ) ;
drop function t_BLOB_SET ;



call print_message('t_CLOB_SET. This scenario is a failure.');
create or replace function t_CLOB_SET(variables_type string, return_type string, param_value CLOB ) RETURN SET IS 
   VAR CLOB  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_CLOB_SET('CLOB', 'SET', CHAR_TO_CLOB('This is a Dog') ), 
 typeof( t_CLOB_SET('CLOB', 'SET', CHAR_TO_CLOB('This is a Dog') ) ) ;
drop function t_CLOB_SET ;



call print_message('t_JSON_SET. This scenario is a failure.');
create or replace function t_JSON_SET(variables_type string, return_type string, param_value JSON ) RETURN SET IS 
   VAR JSON  ;
begin
   VAR := param_value ;
        dbms_output.put_line('variables_type = ' ||variables_type ||', return_type = '||return_type||', param_value(variable value) = '|| VAR ); 
    
   RETURN VAR ; 
end;
select  t_JSON_SET('JSON', 'SET', '{"a":1}' ), 
 typeof( t_JSON_SET('JSON', 'SET', '{"a":1}' ) ) ;
drop function t_JSON_SET ;

drop procedure print_message;

--+ server-message off
