/*
 *      2. CREATE TABLE, SERIAL, TRIGGER. OWNED BY NORMAL USER. BY MEMBER OF DBA GROUP.
 */

create user u1;
create user u2 groups dba;
call login ('u2') on class db_user;
select user;
create table u1.t1 (c1 int);
select class_of, unique_name, class_name, owner.name from _db_class where is_system_class % 8 = 0;
create serial u1.s1;
select unique_name, name, owner.name from db_serial;
create table t1 (c1 int);
create table t2 (c1 int);
create trigger u1.trig1 after insert on t1 execute insert into t2 values (obj.c1);
select unique_name, name, owner.name, target_class, action_definition from db_trigger;
insert into t1 values (1);
select c1 from t1;
select c1 from t2;

call login ('dba') on class db_user;
drop trigger u1.trig1;
drop table u2.t2;
drop table u2.t1;
drop serial u1.s1;
drop table u1.t1;
drop user u2;
drop user u1;
