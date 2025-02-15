/*
Test Case: delete & update 
Priority: 2
Reference case: cc_basic/_01_ReadCommitted/primary_key_column/basic_sql/delete_update_07.ctl
Author: Ray

Test Plan: 
Test DELETE/UPDATE locks (X_LOCK on instance) if the instances of the transactions are not overlapped (with pk schema)

Test Scenario:
C1 delete, C2 update, the affected rows are not overlapped (based on where clause)
C2 try to update the pk column to a duplicate key which is C1 try to deleting 
C1, C2 where clauses are on pk column (index scan) 
C1 rollback, C2 commit
Metrics: data size = small, where clause = simple, schema = single table with pk

Test Point:
1) C2 needs to wait until C1 completed
2) C1 instances won't be deleted since C1 rollback, C2 instances won't be updated (since the duplicate key isn't deleted)

NUM_CLIENTS = 3
C1: delete from table t1;   
C2: update table t1;  
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
C1: CREATE TABLE t1(id INT PRIMARY KEY, col VARCHAR(10), tag VARCHAR(2));
C1: INSERT INTO t1 VALUES(1,'abc','A'),(2,'def','B'),(3,'ghi','C'),(4,'jkl','D'),(5,'mno','E'),(6,'pqr','F'),(7,'abc','G');
C1: COMMIT WORK;
MC: wait until C1 ready;

/* test case */
C1: DELETE FROM t1 WHERE id = 3;
MC: wait until C1 ready;
C2: UPDATE t1 SET id = 3 WHERE id = 4;
/* expect: C2 needs to wait once C1 completed */
MC: wait until C2 blocked;
/* expect: C1 select - id = 3 is deleted */
C1: SELECT * FROM t1 order by 1,2;
C1: rollback;
/* expect: a constraint error message should generated once C2 ready, C2 select - no instance is updated */
MC: wait until C2 ready;
C2: SELECT * FROM t1 order by 1,2;
C2: commit;
/* expect: no instance is deleted and updated */
C3: select * from t1 order by 1,2;

C1: quit;
C2: quit;
C3: quit;