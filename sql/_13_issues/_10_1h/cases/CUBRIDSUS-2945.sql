SELECT DATE_ADD('2008-01-02', INTERVAL 223456789012 SECOND);
SELECT DATE_ADD('2008-01-02', INTERVAL =
'1:12345678901333333333333333333333333333333333333333333333333332345' =
MINUTE_SECOND) from db_root;
SELECT DATE_SUB('2008-01-02', INTERVAL 123456789012345 SECOND);
SELECT ADDDATE('8008-01-02', 1234567);
SELECT SUBDATE('2008-01-02', 1234567);
SELECT DATE_ADD('2008-01-02', INTERVAL 31000000 DAY);
SELECT DATE_ADD('2008-01-02', INTERVAL -31000000 DAY);
SELECT DATE_SUB('2008-01-02', INTERVAL 31000000 DAY);
SELECT DATE_SUB('2008-01-02', INTERVAL -31000000 DAY);
SELECT SUBDATE('2008-01-02', 31000000);
SELECT SUBDATE('2008-01-02', -31000000);
SELECT ADDDATE('2008-01-02', 31000000);
SELECT ADDDATE('2008-01-02', -31000000);

