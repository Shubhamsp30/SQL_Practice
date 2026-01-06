show SEARCH_path;
set SEARCH_path to daily;

-- unique constraints 
create TABLE uq_ex_1(
    phone TEXT UNIQUE
);
INSERT INTO uq_ex_1 VALUES('9999'),('588585');
SELECT * from uq_ex_1
INSERT into uq_ex_1 VALUES(9999)
INSERT into uq_ex_1 VALUES(NULL)
INSERT INTO uq_ex_1 VALUES('sp'),('Sp')