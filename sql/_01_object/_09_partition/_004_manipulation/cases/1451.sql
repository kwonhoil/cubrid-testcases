--create range partition table with timestamp data type and one partition having  maxvalue,then insert data to this table,then update the separator field value,the data is in the boundary of the separator value

create table range_test(id int,	
				test_time time,
				test_date date,
				test_timestamp timestamp, primary key(id,test_timestamp))
		PARTITION BY RANGE (test_timestamp) (
		PARTITION p0 VALUES LESS THAN MAXVALUE
	);
	insert into range_test values(1,'06:00:00','2005-01-01','2005-01-01 09:00:00');
	insert into range_test values(2,'07:00:00','2005-06-01','2005-06-01 09:00:00');
	insert into range_test values(3,'08:00:00','2005-12-01','2005-12-01 09:00:00');
update range_test set test_timestamp = '2025-12-10 09:00:00' where test_timestamp ='2005-12-01 09:00:00';
select * from range_test order by 1;


drop table range_test;
