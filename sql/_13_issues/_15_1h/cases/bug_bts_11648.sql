drop table if exists foo, bar;
create table foo (a int);
create table bar (a int);
insert into foo values (1);
insert into bar values (1);
prepare stmt from 'update foo f right outer join bar b on f.a = b.a set f.a = ?, b.a = ?';
execute stmt using 3, 3;
select * from foo, bar;
drop table if exists foo, bar;
