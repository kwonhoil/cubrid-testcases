--+ server-message on

-- normal: %isopen on a null sys_refcursor (VALUE_ERROR)


create or replace procedure t(i int) as
    function helper(b boolean) return varchar as
    begin
        return case when b is null then 'null' when b then 'true' else 'false' end;
    end;

    rc sys_refcursor;
begin
    dbms_output.put_line(helper(rc%isopen));
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t(7);

drop procedure t;


--+ server-message off
