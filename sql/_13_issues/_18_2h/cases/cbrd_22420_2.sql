drop table if exists t1;
create table t1 (FirstName varchar(20),LastName varchar(20),Age int,gender char (1));
insert into t1 value('yin', 'jian ye',31,'M');
--TEST Create successfully
CREATE INDEX first_name_lower ON t1 (LOWER(FirstName)) with online;
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--TEST Alter successfully
ALTER  INDEX first_name_lower on t1 REBUILD;
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1 (trim(FirstName));
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1 (upper(FirstName))REBUILD;
--Test should not use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE upper(FirstName)='yin';
--TEST Create successfully
CREATE INDEX first_name_lower1 ON t1 (LOWER(FirstName));
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1 (LOWER(FirstName)) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower on t1 REBUILD;
drop  table t1 ;

create table t1 (FirstName varchar(20),LastName varchar(20),Age int,gender char (1));
insert into t1 value('yin', 'jian ye',31,'M');
--TEST Create successfully
CREATE INDEX first_name_lower ON t1 (LOWER(FirstName)) with online;
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1 where FirstName>'aaa' REBUILD;
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1(firstname) WHERE LOWER(FirstName)='yin' REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower on t1 REBUILD;
--Test should not use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin' using index first_name_lower(+);
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1(LOWER(FirstName)) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower on t1 REBUILD;
--Test should not use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE FirstName ='yin';
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--TEST Alter failed
ALTER  INDEX first_name_lower on t1(FirstName) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower on t1 REBUILD;
--Test should not use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
--Test should  use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE FirstName ='yin';
--TEST Alter failed 
ALTER  INDEX first_name_lower on t1(LOWER(FirstName)) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower on t1 REBUILD;
--Test should not use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE FirstName ='yin';
--Test should use index first_name_lower
SELECT /*+ recompile */* FROM t1 WHERE LOWER(FirstName)='yin';
drop  table t1 ;

create table t1 (FirstName varchar(20),LastName varchar(20),Age int,gender char (1));
insert into t1 value('yin', 'jian ye',31,'M');
--TEST Create successfully
CREATE INDEX first_name_lower ON t1 (LOWER(FirstName)) with online;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (LOWER(LastName)) REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (CONCAT(FirstName,LastName)) REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1(FirstName) where FirstName>'aaa' and LastName>'aaa' REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (LOWER(FirstName)) REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (LastName) REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (LOWER(FirstName)) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower ON t1 REBUILD;
drop  table t1 ;

create table t1 (FirstName varchar(20),LastName varchar(20),Age int,gender char (1));
insert into t1 value('yin', 'jian ye',31,'M');
--TEST Create successfully
CREATE INDEX first_name_lower ON t1 (LOWER(FirstName)) with online;
--TEST Alter failed
ALTER  REVERSE INDEX first_name_lower ON t1 (LOWER(LastName)) REBUILD;
--TEST Alter failed
ALTER  REVERSE INDEX first_name_lower ON t1 (LOWER(FirstName)) REBUILD;
--TEST Alter successfully
ALTER  REVERSE INDEX first_name_lower ON t1 REBUILD;
--TEST Alter failed
ALTER  INDEX first_name_lower ON t1 (LOWER(LastName)) REBUILD;
--TEST Alter successfully 
ALTER  INDEX first_name_lower ON t1 REBUILD;
drop  table t1 ;

