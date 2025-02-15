create table tab1(id int, num int);
create table tab2(id int);
create table tab3(text varchar(80));

insert into tab1 values (0,0);
insert into tab1 values (0,1);
insert into tab1 values (0,2);
insert into tab1 values (0,3);
insert into tab1 values (0,4);
insert into tab1 values (1,0);
insert into tab1 values (1,1);
insert into tab1 values (1,2);
insert into tab1 values (1,3);
insert into tab1 values (1,4);
insert into tab1 values (2,0);
insert into tab1 values (2,1);
insert into tab1 values (2,2);
insert into tab1 values (2,3);
insert into tab1 values (2,4);
insert into tab1 values (3,0);
insert into tab1 values (3,1);
insert into tab1 values (3,2);
insert into tab1 values (3,3);
insert into tab1 values (3,4);
insert into tab1 values (4,0);
insert into tab1 values (4,1);
insert into tab1 values (4,2);
insert into tab1 values (4,3);
insert into tab1 values (4,4);
insert into tab1 values (5,0);
insert into tab1 values (5,1);
insert into tab1 values (5,2);
insert into tab1 values (5,3);
insert into tab1 values (5,4);

insert into tab2 values (0);
insert into tab2 values (1);
insert into tab2 values (2);
insert into tab2 values (3);
insert into tab2 values (4);
insert into tab2 values (5);
insert into tab2 values (6);
insert into tab2 values (7);

insert into tab3 values ('abc');
insert into tab3 values ('def');
insert into tab3 values ('ghi');
insert into tab3 values ('jkl');
insert into tab3 values ('mno');
insert into tab3 values ('pqr');
insert into tab3 values ('stu');
insert into tab3 values ('vwx');
insert into tab3 values ('yz');

create index i_tab1_id on tab1(id);
create index i_tab1_id_num on tab1(id, num);
create index i_tab2_id on tab2(id);
create index i_tab3_text on tab3(text);

select tab1.id from tab1 where id>0 using index i_tab1_id(+) keylimit 3;
select tab1.id from tab1 where id>0 and num>0 using index i_tab1_id_num(+) keylimit 3;
select * from tab2,tab3 where tab2.id>0 and tab3.text<'yz' using index i_tab2_id(+) keylimit 2,4, i_tab3_text(+) keylimit 6,2;
select * from tab1, tab2 where tab1.id>0 and tab2.id>0 using index i_tab1_id_num(+) keylimit 3, i_tab2_id(+) keylimit 3,2;
select tab1.id from tab1 where id>0 using index i_tab1_id(+) keylimit 4,5;
prepare stmt from 'select id from tab1 where id>0 using index i_tab1_id(+) keylimit ?,?'; execute stmt using 4,5; drop prepare stmt;
prepare stmt from 'select tab1.id, tab2.id from tab1,tab2 where tab1.id>0 and tab2.id>0 using index i_tab1_id(+) keylimit ?,?, i_tab2_id(+) keylimit ?'; execute stmt using 4,2,3; drop prepare stmt;
prepare stmt from 'select id from tab1 where id>0 using index i_tab1_id(+) keylimit ?'; execute stmt using 'abc'; drop prepare stmt;
prepare stmt from 'select /*+ recompile */ id from tab1 where id>0 using index i_tab1_id(+) keylimit ?'; execute stmt using '3'; drop prepare stmt;
prepare stmt from 'select id from tab1 where id>0 using index i_tab1_id(+) keylimit ?, ?'; execute stmt using 'abc','def'; drop prepare stmt;
prepare stmt from 'select * from tab2,tab3 where tab2.id>0 and tab3.text<? using index i_tab2_id(+) keylimit ?,?, i_tab3_text(+) keylimit ?,?'; execute stmt using 'yz',2,4,6,2; drop prepare stmt;

drop table tab1;
drop table tab2;
drop table tab3;
