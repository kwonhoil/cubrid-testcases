--+ holdcas on;
---- ALTER TABLE ...  CHANGE COLUMN  , type change : DOUBLE to other floating numbers
-- constraints : no constraints
-- ordering : no order defined
-- name : same name or changed


set system parameters 'alter_table_change_type_strict=no';
set system parameters 'error_log_level=warning';
set system parameters 'error_log_warning=yes';

-------------- DOUBLE 1 : to float , values in range
create table t1 (d1 double);
insert into t1 values (1),(-2),(2),(1.1);

-- should fail (range)
insert into t1 values (1e200);

select * from t1 order by 1;
show columns in t1;

-- should fail
alter table t1 change d1 f1 float;
-- should be ok
insert into t1 values (1e50);

select * from t1  order by 1;
show columns in t1;

drop table t1;

-------------- DOUBLE 2 : to double , values out of range
create table t1 (d1 double);
insert into t1 values (1),(-2),(2),(1.1);

insert into t1 values (1e30);

select * from t1 order by 1;
show columns in t1;

-- should fail
alter table t1 change d1 f1 float;
-- should be ok
insert into t1 values (1e50);

select * from t1  order by 1;
show columns in t1;

drop table t1;


-------------- DOUBLE 3 : to monetary ,
create table t1 (d1 double);
insert into t1 values (1),(-2),(2),(1.1);

-- should fail (range)
insert into t1 values (1e200);

select * from t1 order by 1;
show columns in t1;

-- should be ok
alter table t1 change d1 m1 monetary;
-- should be ok
insert into t1 values (\1e40);

select * from t1  order by 1;
show columns in t1;

drop table t1;

-------------- DOUBLE 2 : to monetary , unique
create table t1 (d1 double unique);
insert into t1 values (1),(-2),(2),(1.1);

-- should fail (range)
insert into t1 values (1e200);

-- should fail (unique)
insert into t1 values (1.1);

select * from t1 order by 1;
show columns in t1;

-- should fail
alter table t1 change d1 d1 monetary unique;
-- should be ok
insert into t1 values (\1e40);
-- should fail (unique)
insert into t1 values (\1e40);

select * from t1  order by 1;
show columns in t1;

drop table t1;


commit;
--+ holdcas off;

set system parameters 'error_log_level=syntax';
set system parameters 'error_log_warning=no';

