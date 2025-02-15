drop if exists tx_serial;
CREATE TABLE tx_serial (id INT);
create serial JSON_ARRAYAGG  start with 1;    
create serial JSON_ARRAY_APPEND  start with 2;      
create serial JSON_ARRAY_INSERT  start with 3;  
create serial JSON_ARRAY_LEX  start with 4;     
create serial JSON_CONTAINS  start with 5;      
create serial JSON_CONTAINS_PATH  start with 6; 
create serial JSON_DEPTH  start with 7;         
create serial JSON_EXTRACT  start with 8;       
create serial JSON_GET_ALL_PATHS  start with 9; 
create serial JSON_INSERT  start with 10;        
create serial JSON_KEYS  start with 11;          
create serial JSON_LENGTH  start with 12;        
create serial JSON_MERGE  start with 13;         
create serial JSON_MERGE_PATCH  start with 14;   
create serial JSON_MERGE_PRESERVE  start with 15;
create serial JSON_OBJECTAGG  start with 16;     
create serial JSON_OBJECT_LEX  start with 17;    
create serial JSON_PRETTY  start with 18;        
create serial JSON_QUOTE  start with 19;         
create serial JSON_REMOVE  start with 20;        
create serial JSON_REPLACE  start with 21;       
create serial JSON_SEARCH  start with 22;        
create serial JSON_SET  start with 23;           
create serial JSON_TABLE  start with 24;         
create serial JSON_TYPE  start with 25;          
create serial JSON_UNQUOTE  start with 26;       
create serial JSON_VALID  start with 27;         

INSERT INTO tx_serial VALUES (JSON_ARRAYAGG.NEXT_VALUE);      
INSERT INTO tx_serial VALUES (JSON_ARRAY_APPEND.NEXT_VALUE);  
INSERT INTO tx_serial VALUES (JSON_ARRAY_INSERT.NEXT_VALUE);  
INSERT INTO tx_serial VALUES (JSON_ARRAY_LEX.NEXT_VALUE);     
INSERT INTO tx_serial VALUES (JSON_CONTAINS.NEXT_VALUE);      
INSERT INTO tx_serial VALUES (JSON_CONTAINS_PATH.NEXT_VALUE); 
INSERT INTO tx_serial VALUES (JSON_DEPTH.NEXT_VALUE);         
INSERT INTO tx_serial VALUES (JSON_EXTRACT.NEXT_VALUE);       
INSERT INTO tx_serial VALUES (JSON_GET_ALL_PATHS.NEXT_VALUE); 
INSERT INTO tx_serial VALUES (JSON_INSERT.NEXT_VALUE);        
INSERT INTO tx_serial VALUES (JSON_KEYS.NEXT_VALUE);          
INSERT INTO tx_serial VALUES (JSON_LENGTH.NEXT_VALUE);        
INSERT INTO tx_serial VALUES (JSON_MERGE.NEXT_VALUE);         
INSERT INTO tx_serial VALUES (JSON_MERGE_PATCH.NEXT_VALUE);   
INSERT INTO tx_serial VALUES (JSON_MERGE_PRESERVE.NEXT_VALUE);
INSERT INTO tx_serial VALUES (JSON_OBJECTAGG.NEXT_VALUE);     
INSERT INTO tx_serial VALUES (JSON_OBJECT_LEX.NEXT_VALUE);    
INSERT INTO tx_serial VALUES (JSON_PRETTY.NEXT_VALUE);        
INSERT INTO tx_serial VALUES (JSON_QUOTE.NEXT_VALUE);         
INSERT INTO tx_serial VALUES (JSON_REMOVE.NEXT_VALUE);        
INSERT INTO tx_serial VALUES (JSON_REPLACE.NEXT_VALUE);       
INSERT INTO tx_serial VALUES (JSON_SEARCH.NEXT_VALUE);        
INSERT INTO tx_serial VALUES (JSON_SET.NEXT_VALUE);           
INSERT INTO tx_serial VALUES (JSON_TABLE.NEXT_VALUE);         
INSERT INTO tx_serial VALUES (JSON_TYPE.NEXT_VALUE);          
INSERT INTO tx_serial VALUES (JSON_UNQUOTE.NEXT_VALUE);       
INSERT INTO tx_serial VALUES (JSON_VALID.NEXT_VALUE);         
select * from tx_serial;
       
drop serial JSON_ARRAYAGG;      
drop serial JSON_ARRAY_APPEND;  
drop serial JSON_ARRAY_INSERT;  
drop serial JSON_ARRAY_LEX;     
drop serial JSON_CONTAINS;      
drop serial JSON_CONTAINS_PATH; 
drop serial JSON_DEPTH;         
drop serial JSON_EXTRACT;       
drop serial JSON_GET_ALL_PATHS; 
drop serial JSON_INSERT;        
drop serial JSON_KEYS;          
drop serial JSON_LENGTH;        
drop serial JSON_MERGE;         
drop serial JSON_MERGE_PATCH;   
drop serial JSON_MERGE_PRESERVE;
drop serial JSON_OBJECTAGG;     
drop serial JSON_OBJECT_LEX;    
drop serial JSON_PRETTY;        
drop serial JSON_QUOTE;         
drop serial JSON_REMOVE;        
drop serial JSON_REPLACE;       
drop serial JSON_SEARCH;        
drop serial JSON_SET;           
drop serial JSON_TABLE;         
drop serial JSON_TYPE;          
drop serial JSON_UNQUOTE;       
drop serial JSON_VALID; 
        
drop table tx_serial;
