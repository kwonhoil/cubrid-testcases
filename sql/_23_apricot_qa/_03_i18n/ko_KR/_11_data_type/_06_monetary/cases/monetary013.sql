create table t(a monetary);
insert into t values(-9.9/0);
insert into t values(\CNY-9.9/0);
insert into t values($-9.9/0);
insert into t values(null);
select * from t order by 1;
drop table t;
