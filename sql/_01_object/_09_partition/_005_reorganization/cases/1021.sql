-- create range partition table on varchar field having boundary values and add a partition having maxvalue and then query all partitions and drop table

create table range_test(id int not null ,
			test_int int,
			test_char char(50),
			test_varchar varchar(2000),
			test_datetime timestamp,primary key(id,test_varchar))
PARTITION BY RANGE (test_varchar) (
    PARTITION p0 VALUES LESS THAN ('ddd'),
    PARTITION p1 VALUES LESS THAN ('ggg'),
    PARTITION p2 VALUES LESS THAN ('kkk')
);
ALTER TABLE range_test add partition (
partition p8 values less than maxvalue
);
select * from db_partition order by 3,4;

drop class range_test;
