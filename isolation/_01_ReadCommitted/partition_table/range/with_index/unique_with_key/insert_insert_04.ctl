/*
Test Case: insert & insert
Priority: 1
Reference case:
Author: Rong Xu

Test Point:
heavy insert, owns lots of lock, about 1000000

NUM_CLIENTS = 2
*/

MC: setup NUM_CLIENTS = 2;

C1: set transaction lock timeout INFINITE;
C1: set transaction isolation level read committed;

C2: set transaction lock timeout INFINITE;
C2: set transaction isolation level read committed;

/* preparation */
C1: drop table if exists t;
C1: create table t(id int,col varchar(10),col1 varchar(10)) partition by range(id)(partition p1 values less than (50000),partition p2 values less than MAXVALUE);
C1: create unique index idx on t(id,col);
C1: commit work;
MC: wait until C1 ready;

/* test case */
C1: insert into t values(1,'a','c');
MC: wait until C1 ready;
C2: set @newincr=0;
C2: insert into t select (@newincr:=@newincr+1),'a','b' from db_class a,db_class b,db_class c,db_class d limit 1000000;
MC: wait until C2 blocked;
C1: commit;
MC: wait until C2 ready;
C2: commit;
MC: wait until C2 ready;

/* expected 1, since an unique key violation */
C1: select count(*) from t;
C2: commit;          

C2: quit;
C1: quit;
