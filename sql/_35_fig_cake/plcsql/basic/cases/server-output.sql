-- Test basic registration of PL/CSQL and server-message CTP hint

--+ server-message on
create or replace procedure demo_hello() as
begin
    DBMS_OUTPUT.put_line('Hello CUBRID PL/CSQL! One');
    // single line comment in PL;
    -- SQL comment in PL;
    DBMS_OUTPUT.put_line('Hello CUBRID PL/CSQL! Two');
    /* multi
    line 
    comment in PL; */
end;

-- comment

call demo_hello ();
select /*+ recompile */ demo_hello ();

DROP PROCEDURE demo_hello;

--+ server-message off
