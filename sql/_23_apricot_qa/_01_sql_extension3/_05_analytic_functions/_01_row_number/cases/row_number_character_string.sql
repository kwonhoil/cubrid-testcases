--TEST: test with character string data types and normal syntax 


create table rownum_string(
	col1 char(20),
	col2 varchar(100), 
	col3 nchar(10),
	col4 nchar varying,
	col5 string
);


insert into rownum_string values('aaaaa', 'This is a dog.', n'1990-1-1 1', n'cubrid', 'character');
insert into rownum_string values('aaaaa', 'This is a cat.', n'1991-1-1 1', n'cubrid', 'character');
insert into rownum_string values('aaaaa', 'This is a dog.', n'1992-1-1 1', n'cubrid', 'character');
insert into rownum_string values('aaaaa', 'This is a cat.', n'1993-1-1 1', n'mysql', 'character');
insert into rownum_string values('aaaaa', 'This is a dog.', n'1994-1-1 1', n'mysql', 'character');
insert into rownum_string values('eeeee', 'This is a cat.', n'1995-1-1 1', n'mysql', 'character');
insert into rownum_string values('eeeee', 'This is a dog.', n'1996-1-1 1', n'mysql', 'character');
insert into rownum_string values('eeeee', 'This is a dog.', n'1997-1-1 1', n'mysql', 'character');
insert into rownum_string values('eeeee', 'This is a rabbit.', n'1998-1-1 1', n'mysql', 'character');
insert into rownum_string values('ccccc', 'This is a dog.', n'1999-1-1 1', n'mysql', 'character');
insert into rownum_string values('ccccc', 'This is a dog.', n'2000-1-1 1', n'cubrid', 'string');
insert into rownum_string values('ccccc', 'This is a rabbit.', n'2001-1-1 1', n'cubrid', 'string');
insert into rownum_string values('zzzzz', 'This is a dog.', n'2002-1-1 1', n'cubrid', 'string');
insert into rownum_string values('bbbbb', 'This is a dog.', n'2003-1-1 1', n'cubrid', 'string');
insert into rownum_string values('bbbbb', 'This is a cat.', n'2004-1-1 1', n'oracle', 'string');
insert into rownum_string values('bbbbb', 'This is a dog.', n'2005-1-1 1', n'oracle', 'string');
insert into rownum_string values('bbbbb', 'This is a dog.', n'2006-1-1 1', n'oracle', 'string');
insert into rownum_string values('bbbbb', 'This is a rabbit.', n'2007-1-1 1', n'oracle', 'string');
insert into rownum_string values('bbbbb', 'This is a dog.', n'2008-1-1 1', n'cubrid', 'string');
insert into rownum_string values('bbbbb', 'This is a dog.', n'2009-1-1 1', n'cubrid', 'string');


--TEST: OVER() clause
--TEST: no alias
select row_num from (select  col1, col2, row_number() over() row_num from rownum_string) order by 1;
--TEST: varchar(n), with alias
select row_num from (select  col2, col3, row_number() over() row_num from rownum_string) order by 1;
--TEST: with where clause
select row_num from (select  col3, col4, row_number() over() row_num from rownum_string where col1 > 'aaaaa') order by 1;
--TEST: nchar varying
select row_num from (select  col4, col1, row_number() over() row_num from rownum_string) order by 1;
--TEST: string
select row_num from (select  col5, col3, row_number() over() row_num from rownum_string) order by 1;
select row_num from (select  *, row_number() over() row_num from rownum_string) order by 1;
--TEST: syntax error
select col1, col3, col4, row_number() over row_num from rownum_string;
select col1, col3, col2, row_number() over(1) row_num from rownum_string;



--TEST: OVER(PARTITION BY) clause
--TEST: partition by char(n)
select row_num from (select col1, col2, col3, col4, col5, row_number() over(partition by col1) row_num from rownum_string) order by 1;
--TEST: partition by varchar(n)
select row_num from (select col1, col2, col3, col4, col5, row_number() over(partition by col2) row_num from rownum_string) order by 1;
--TEST: partition by nchar(n)
select row_num from (select col1, col2, col3, col4, col5, row_number() over(partition by col3) row_num from rownum_string) order by 1;
--TEST: partition by nchar varying
select row_num from (select col1, col2, col3, col4, col5, row_number() over(partition by col4) row_num from rownum_string) order by 1;
--TEST: partition by string
select row_num from (select col1, col2, col3, col4, col5, row_number() over(partition by col5) row_num from rownum_string) order by 1;



--TEST: OVER(ORDER BY) clause
--TEST: order by 1 column name
select col1, row_number() over(order by col1) row_num from rownum_string order by 1, 2;
--TEST: order by 2 column names
select col2, col3, row_number() over(order by col2, col3 asc) row_num from rownum_string order by 1, 2, 3;
--TEST: order by more than 2 column names
select col1, col2, col3, col4, col5, row_number() over(order by col1, col2 desc, col3, col4 asc, col5) row_num from rownum_string order by 1, 2, 3, 4, 5, 6;
--TEST: order by columns not selected
select col3, row_number() over(order by col4 desc, col2, col1 asc) row_num from rownum_string order by 1, 2;
--TEST: order by 1 position
select col4, row_number() over(order by 1) row_num from rownum_string order by 1, 2;
--TEST: order by 3 positions
select col3, col2, row_number() over(order by 1, 2 desc, 3 asc) row_num from rownum_string order by 1, 2, 3;
--TEST: order by more than 3 positions
select col1, col2, col3, col4, col5, row_number() over(order by 3, 2 asc, 5 desc, 1 desc, 4) row_num from rownum_string order by 1, 2, 3, 4, 5, 6;
--TEST: order by positions not existed
select col2, row_number() over(order by 2) row_num from rownum_string order by 1, 2;
select col1, row_number() over(order by 3, 4, 1 desc) row_num, col2, col4 from rownum_string order by 1, 2;
select col3, col4, row_number() over(order by 5) row_num from rownum_string order by 1, 2;
select col3, col1, row_number() over(order by 100) row_num from rownum_string order by 1, 2;
--TEST: order by column names and positions
select col1, col2, col3, col4, col5, row_number() over(order by 1, col2 desc, 3, col4 asc, 5 desc) row_num from rownum_string order by 1, 2, 3, 4, 5, 6;




--TEST: OVER(PARTITION BY ORDER BY) clause
--TEST: partition by char(n)
select col1, col2, col3, row_number() over(partition by col1 order by col1, col2, col3) from rownum_string order by 1, 2, 3, 4;
--TEST: partition by varchar(n)
select col2, col4, col1, row_number() over(partition by col2 order by col2, col4, col1 desc) from rownum_string order by 1, 2, 3, 4;
--TEST: partition by nchar(n)
select col3, row_number() over(partition by col3 order by col4) row_num, col2 from rownum_string order by 1, 2;
--TEST: partition by nchar varying
select col4, col1, row_number() over(partition by col4 order by col1, col2 desc) row_num from rownum_string order by 1, 2, 3;
--TEST: partition by string
select col5, col2, col4, row_number() over(partition by col5 order by col4, 1, 2 asc) from rownum_string order by 1, 2, 3, 4;
--TEST: syntax error
select col1, col2, row_number() over(order by col1, col2 partition by col2) from rownum_string;



drop table rownum_string; 















