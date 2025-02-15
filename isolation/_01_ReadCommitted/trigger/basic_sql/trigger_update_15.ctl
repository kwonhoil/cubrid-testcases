/*
Test Case: update in trigger & delete
Priority: 1
Reference case:
Author: Lily

Test Point:
when trigger is called, update statement is executed

NUM_CLIENTS = 2
C1: start transaction;
C2: delete a row from hi;
C1: insert into tt1 to fire a trigger to update different row from hi; --ready
*/

MC: setup NUM_CLIENTS = 2;
C1: set transaction lock timeout INFINITE;
C1: set transaction isolation level read committed;
C2: set transaction lock timeout INFINITE;
C2: set transaction isolation level read committed;

/* preparation */
C1: DROP TABLE IF EXISTS hi;
C1: CREATE TABLE hi( id INT , col VARCHAR(10));
C1: INSERT INTO hi VALUES(1,'111'),(2,'222'),(3,'333');
C1: CREATE TABLE tt1( id INT, col VARCHAR(10));
C1: CREATE TRIGGER tt1_insert BEFORE INSERT ON tt1 EXECUTE UPDATE hi SET col=NULL WHERE id = new.id;
C1: commit work;
MC: wait until C1 ready;

/* test case */

C1: UPDATE hi SET col=NULL WHERE id=3;
MC: wait until C1 ready;
C2: DELETE FROM hi WHERE id=1;
MC: wait until C2 ready;
C1: INSERT INTO tt1 VALUES(2,'test');
C1: SELECT * FROM hi ORDER BY id;
MC: wait until C1 ready;
C2: SELECT * FROM tt1 ORDER BY id;
C2: SELECT * FROM hi ORDER BY id;
C2: commit;
MC: wait until C2 ready;

C1: SELECT * FROM tt1 ORDER BY id;
C1: SELECT * FROM hi ORDER BY id;
C1: commit work;
MC: wait until C1 ready;
C2: SELECT * FROM hi ORDER BY id;

C2: quit;
C1: quit;
