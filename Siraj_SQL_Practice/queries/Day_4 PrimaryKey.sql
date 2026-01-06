set search_path to daily;
show search_path;
-- primary key= Not null + Unique + serial
CREATE TABLE pk_ex_1(
    id serial PRIMARY KEY,
    name TEXT
);
INSERT INTO pk_ex_1(name) VALUES('ram')
INSERT INTO pk_ex_1(id,NAME) VALUES(2,'Rohan Dup')
SELECT * from pk_ex_1

show search_path;
select * from employees;
