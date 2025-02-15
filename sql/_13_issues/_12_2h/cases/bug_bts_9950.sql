--+ holdcas on;
drop table if exists t1;
create table t1 (a bigint, b varchar(100) charset utf8 collate utf8_en_ci);
insert into t1 values (3232235530, '192.168.0.10');
select INET_NTOA(a) from t1;
SELECT COERCIBILITY(INET_NTOA(a)) from t1;
SELECT COLLATION(INET_NTOA(a)) from t1;
SELECT CHARSET(INET_NTOA(a)) from t1;
drop t1;
commit;
--+ holdcas off;
