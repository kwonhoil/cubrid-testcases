--+ server-message on

-- normal: basic usage of a builtin function call

create or replace procedure t () as
begin
    dbms_output.put_line(INET_ATON(NULL)); -- param NULL parse error for first paramA
    dbms_output.put_line(INET_NTOA(NULL)); -- param NULL parse error for first paramA

    dbms_output.put_line(INET_ATON('192.168.253.255')); -- result not return properly
    dbms_output.put_line(INET_NTOA(3232300543)); -- result not return properly
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t();

drop procedure t;

--+ server-message off
