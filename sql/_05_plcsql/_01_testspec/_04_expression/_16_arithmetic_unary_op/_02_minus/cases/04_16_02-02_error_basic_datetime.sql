--+ server-message on
-- Verified for CBRD-24565

-- error: usage of unary operator '-' with datetime values

create or replace procedure t(i int) as
    a datetime := datetime'2013-10-09 01:02:03.456';
    b datetime := -a;
begin
    null;
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';


--+ server-message off
