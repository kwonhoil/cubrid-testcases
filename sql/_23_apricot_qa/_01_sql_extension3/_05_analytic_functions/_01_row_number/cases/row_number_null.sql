--TEST: null values included in the table 


create table rownum_numeric(
	col1 int,
	col2 short, 
	col3 bigint,
	col4 numeric(10, 5),
	col5 float,
	col6 double,
	col7 monetary
);


insert into rownum_numeric values(10000, 100, 10000000, 12345.06789, 111.11, 11111.130, 1000);
insert into rownum_numeric values(10000, 200, null, 12345.06789, 111.12, 11111.129, 1000);
insert into rownum_numeric values(10000, null, 30000000, 12345.16789, 111.13, 11111.128, 1000);
insert into rownum_numeric values(10000, 200, 40000000, 12345.06789, 111.14, 11111.127, 1000);
insert into rownum_numeric values(null, 100, 50000000, null, 111.15, 11111.126, 1000);
insert into rownum_numeric values(20000, 200, 70000000, 12345.06789, 111.16, 11111.125, 1000);
insert into rownum_numeric values(20000, 100, 80000000, 12345.06789, 111.17, 11111.124, 1000);
insert into rownum_numeric values(20000, 100, 10000000, 12345.26789, 111.18, 11111.123, 1000);
insert into rownum_numeric values(null, 300, 20000000, null, 111.19, 11111.122, 1000);
insert into rownum_numeric values(30000, null, 30000000, 12345.06789, 111.20, 11111.121, 1000);
insert into rownum_numeric values(30000, 100, 40000000, null, 111.21, 11111.120, 1000);
insert into rownum_numeric values(null, 300, 50000000, 12345.06789, 111.23, 11111.119, 1000);
insert into rownum_numeric values(40000, 100, 10000000, 12345.06789, 111.24, null, 1000);
insert into rownum_numeric values(50000, null, 20000000, 12345.06789, 111.25, 11111.117, 1000);
insert into rownum_numeric values(50000, 200, 30000000, 12345.06789, 111.26, 11111.116, 1000);
insert into rownum_numeric values(50000, 100, 40000000, 12345.56789, 111.27, 11111.115, 1000);
insert into rownum_numeric values(null, 100, 50000000, 12345.06789, 111.28, 11111.114, 1000);
insert into rownum_numeric values(50000, 300, 60000000, 12345.56789, 111.29, 11111.113, 1000);
insert into rownum_numeric values(50000, 100, 70000000, 12345.06789, 111.30, 11111.112, 1000);
insert into rownum_numeric values(50000, 100, 80000000, 12345.56789, 111.31, 11111.111, 1000);


--TEST: int 
select row_num from (select  col1, col2, row_number() over() row_num from rownum_numeric) order by 1;
--TEST: short, with alias
select row_num from (select  col2, col3, row_number() over() row_num from rownum_numeric) order by 1;
--TEST: bigint, with where clause
select row_num from (select  col3, col4, row_number() over() row_num from rownum_numeric where col1 > 10000) order by 1;
--TEST: numeric, distinct
select row_num from (select  col4, col5, row_number() over() row_num from rownum_numeric) order by 1;
--TEST: float, all
select row_num from (select  col5, col6, col7, row_number() over() row_num from rownum_numeric) order by 1;
--TEST: double, all
select row_num from (select  col6, col1, col2, col5, row_number() over() row_num from rownum_numeric where length(col3)=8 and round(col5)=111) order by 1;
--TEST: monetary, distinct
select row_num from (select  col7, col3, col5, row_number() over() row_num from rownum_numeric) order by 1;
--TEST: no matched rows
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over() row_num from rownum_numeric where trunc(col6)=111) order by 1;



--TEST: partition by int
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col1) row_num from rownum_numeric) order by 1;
--TEST: partition by smallint
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col2) row_num from rownum_numeric) order by 1;
--TEST: partition by bigint
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col3) row_num from rownum_numeric) order by 1;
--TEST: partition by numeric
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col4) row_num from rownum_numeric) order by 1;
--TEST: partition by float
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col5) row_num from rownum_numeric) order by 1;
--TEST: partition by double
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col6) row_num from rownum_numeric) order by 1;
--TEST: partition by monetary
select row_num from (select  col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col7) row_num from rownum_numeric) order by 1;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, row_number() over(order by col1) row_num from rownum_numeric order by row_num;
--TEST: order by 2 column names
select col2, col3, row_number() over(order by col2, col3 asc) row_num from rownum_numeric order by row_num;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by col1, col2 desc, col3, col4 asc, col5, col6 desc) row_num from rownum_numeric order by row_num;
--TEST: order by columns not selected
select col3, row_number() over(order by col4, col6 desc, col2, col1 asc) row_num from rownum_numeric order by row_num;
--TEST: order by 1 position
select col5, row_number() over(order by 1) row_num from rownum_numeric order by row_num;
--TEST: order by 3 positions
select col3, col5, row_number() over(order by 1, 2 desc, 3 asc) row_num from rownum_numeric order by row_num;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by 5, 3, 7, 2 asc, 1 desc, 6 desc, 4) row_num from rownum_numeric order by row_num;
--TEST: order by positions not existed
select col5, row_number() over(order by 2) row_num from rownum_numeric order by row_num;
select col1, row_number() over(order by 3, 4, 1 desc) row_num, col5, col7 from rownum_numeric order by row_num;
select col3, col5, row_number() over(order by 5) row_num from rownum_numeric order by row_num;
select col3, col5, row_number() over(order by 100) row_num from rownum_numeric order by row_num;
--TEST: order by column names and positions
select col1, col2, col3, col4, col5, col6, col7, row_number() over(order by 1, col2 desc, 3, col4 asc, 5, col6 desc, 7) row_num from rownum_numeric order by row_num;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by int
select col1, col2, col3, row_number() over(partition by col1 order by 1, 2, 3) row_num from rownum_numeric order by row_num;
--TEST: partition by smallint
select col2, col4, col5, row_number() over(partition by col2 desc order by col4, col5 desc) row_num from rownum_numeric order by row_num;
--TEST: partition by bigint
select col3, row_number() over(partition by col3 order by 1, 2, 3) row_num, col5 from rownum_numeric order by row_num;
--TEST: partition by numeric
select col4, col1, row_number() over(partition by col4 order by 1, 2 desc) row_num from rownum_numeric order by row_num;
--TEST: partition by float
select col5, col6, row_number() over(partition by col5 desc order by col6 asc) row_num from rownum_numeric order by row_num;
--TEST: partition by double
select col6, col1, col2, col3, row_number() over(partition by col6 desc order by 5,4,3 desc,2,1) row_num from rownum_numeric order by row_num;
--TEST: partition by monetary
select col7, col1, col2, col3, col4, col5, col6, col7, row_number() over(partition by col7 order by 1 desc, col1, col2, col3 asc, 5, 6, col7 desc) row_num from rownum_numeric order by row_num;
--TEST: syntax error
select col1, col2, row_number() over(order by col1, col2 partition by col2) from rownum_numeric order by row_num;



drop table rownum_numeric; 















