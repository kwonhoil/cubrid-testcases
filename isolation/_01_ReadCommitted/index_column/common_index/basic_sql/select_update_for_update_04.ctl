/*
Test Case: select for update & update
Priority: 1
Reference case:
Isolation Level: Read Committed
Author: Ray

Test Plan: 
Test MVCC behaviors for 'FOR UPDATE' clause within common index schema 

Test Scenario:
C1 select for update, C2 update, the affected rows are overlapped
C2 update affect C1 
C1 commit, C2 commit
Metrics: data size = small, where clause = simple, index = single, DELETE state = single table

Test Point:
1) C2 will be waiting (Locking Test)
2) C1 C2 can only see its own data changes since the data is uncommitted after the query started. (Visibility Test)
3) C2 can see the updated value after C1 committed

NUM_CLIENTS = 3
C1: select from table t1 for update;  
C2: select from table t1;  
C3: select on table t1; C3 is used to check the updated result
*/

MC: setup NUM_CLIENTS = 3;

C1: set transaction lock timeout INFINITE;
C1: set transaction isolation level read committed;

C2: set transaction lock timeout INFINITE;
C2: set transaction isolation level read committed;

C3: set transaction lock timeout INFINITE;
C3: set transaction isolation level read committed;

/* preparation */
C1: DROP TABLE IF EXISTS t1;
C1: CREATE TABLE t1(id INT, col VARCHAR(10));
C1: create index idx on t1(id);
C1: INSERT INTO t1 VALUES(1,'abc'),(2,'def'),(3,'ghi'),(4,'jkl'),(5,'mno'),(6,'pqr');
C1: COMMIT WORK;
MC: wait until C1 ready;

/* test case */
C1: SELECT * FROM t1 WHERE id = 1 FOR UPDATE;
MC: wait until C1 ready;

C2: UPDATE t1 SET id = 1 WHERE id = 1 or id = 2;
/* expect: C2 needs to wait */
MC: wait until C2 blocked;
C1: UPDATE t1 SET id = 7 WHERE id = 1;
MC: wait until C1 ready;
C1: COMMIT;

/* expect: C2 select - id = 1 is updated */
C2: SELECT * FROM t1 order by 1,2;
MC: wait until C2 ready;
C2: commit;
MC: wait until C2 ready;

/* expect: the instances of id = 1,2 is updated only on id */
C3: select * from t1 order by 1,2;
MC: wait until C3 ready;


C1: quit;
C2: quit;
C3: quit;

