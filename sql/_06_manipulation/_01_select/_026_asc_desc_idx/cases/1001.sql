--Create common index with keyword asc/desc and char,varchar datatype
create class ddl_0001(col1 char(10), col2 varchar(20), col3 varchar(4096), col4 char(1024), col5 char(1) );
insert into ddl_0001 values('1001','1001','2046','100001','1');
insert into ddl_0001 values('1002','1001','2046','100001','1');
insert into ddl_0001 values('1003','1001','2046','100001','1');
insert into ddl_0001 values('1004','1001','2046','100001','1');
insert into ddl_0001 values('1005','1001','2046','100001','1');
insert into ddl_0001 values('1006','1001','2046','100001','1');
insert into ddl_0001 values('1007','1001','2046','100001','1');
insert into ddl_0001 values('1009','1001','2046','100001','1');
create index ddl_0001_idx0 on ddl_0001(col1 asc);
create index ddl_0001_idx1 on ddl_0001(col1 desc);
create index ddl_0001_idx2 on ddl_0001(col2 asc);
create index ddl_0001_idx3 on ddl_0001(col1 asc, col2 desc);
create index ddl_0001_idx4 on ddl_0001(col1 asc, col2 desc, col3 asc);
create index ddl_0001_idx5 on ddl_0001(col1 asc,col2 desc, col3 desc, col4 asc);
create index ddl_0001_idx6 on ddl_0001(col1 asc, col2 desc, col3 asc, col4 desc, col5 asc);
select * from db_index where class_name='ddl_0001' order by 1,2,3;
select * from db_index_key where class_name='ddl_0001' order by index_name,class_name,key_attr_name;
select * from ddl_0001 where col1 < '1005' order by 1,2,3;
delete from ddl_0001 where col1='1009';
update ddl_0001 set col1='2046';
drop class ddl_0001;
