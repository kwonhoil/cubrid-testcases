/*
Test Case: insert in trigger & update
Priority: 2
Reference case: cc_basic/_01_ReadCommitted/trigger/basic_sql/trigger_insert_01.ctl
Author: Lily

Test Point:
when trigger is called, insert statement is executed
there is primary key on table;

NUM_CLIENTS = 2
C1: insert into tt1 to fire a trigger to insert a row from hi; 
C2: update same row from hi; 
C1: rollback;
*/

MC: setup NUM_CLIENTS = 2;
C1: set transaction lock timeout INFINITE;
C1: set transaction isolation level repeatable read;
C2: set transaction lock timeout INFINITE;
C2: set transaction isolation level repeatable read;

/* preparation */
C1: DROP TABLE IF EXISTS tt1;
C1: DROP TABLE IF EXISTS hi;
C1: CREATE TABLE hi( id INT PRIMARY KEY, col VARCHAR(10));
C1: INSERT INTO hi VALUES(2,'test');
C1: CREATE TABLE tt1( id INT, col VARCHAR(10));
C1: CREATE TRIGGER tt1_insert AFTER INSERT ON tt1 EXECUTE INSERT INTO hi(id,col) VALUES(obj.id, obj.col);
C1: commit work;

/* test case */
C1: INSERT INTO tt1 VALUES(1,'test');
MC: wait until C1 ready;
C2: INSERT INTO hi(id,col) VALUES(1,'hard');
MC: wait until C2 blocked;
C1: SELECT * FROM tt1 ORDER BY id;
C1: SELECT * FROM hi ORDER BY id;
C1: rollback;
MC: wait until C2 ready;
C2: SELECT * FROM hi ORDER BY id;
C2: SELECT * FROM tt1 ORDER BY id;
C2: commit work;
C2: SELECT * FROM hi ORDER BY id;
C2: SELECT * FROM tt1 ORDER BY id;

C2: commit;
C2: quit;
C1: quit;
