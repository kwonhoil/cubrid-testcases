--+ server-message on
-- verified the CBRD-25056
-- Support RECORD types and %ROWTYPE feature

-- create table & insert data
drop table if exists tbl1;
create table tbl1 ( col1 varchar(3) );
insert into tbl1 values('abc');

EVALUATE 'normal';
CREATE OR REPLACE PROCEDURE test_prc IS
  r tbl1%ROWTYPE;
BEGIN
  execute immediate 'select decode(length(col1),10, ''sysdate'', to_char(col1)) from tbl1 ' into r;
  dbms_output.put_line('col1 ===> ' || r.col1);
END;

CALL test_prc();


EVALUATE 'CASE 1. normal : Change the column length from 3 to 5 and enter data.';
drop table tbl1;
create table tbl1 ( col1 varchar(5) );
insert into tbl1 values('abcde');
CALL test_prc();


EVALUATE 'CASE 3. Normal : Change the column type from varchar to date and enter data.';
drop table tbl1;
create table tbl1 ( col1 date );
insert into tbl1 values( sysdate );
CALL test_prc();


drop procedure test_prc;

drop table  tbl1 ;

--+ server-message off

