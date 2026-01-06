show search_path;
set search_path to daily;

drop table if exists nn_ex_1;
CREATE table nn_ex_1(
	id serial PRIMARY key,
	dept_name VARCHAR(50) NOT NULL
);

INSERT into nn_ex_1 (dept_name) VALUES('HR');
SELECT * from nn_ex_1

-- multiple not null COLUMNS
drop table if exists nn_ex_2;
CREATE table nn_ex_2(
	name text not null,
	email text not null,
	city TEXT
);
INSERT into nn_ex_2 values('Shubham','Shubham@gmail.com');
INSERT into nn_ex_2 values(Null,'Shubham@gmail.com','Pune');
SELECT * from nn_ex_2

-- 3-> add not null 
CREATE table nn_ex_3(
	phone "text" 
);
INSERT into nn_ex_3 VALUES(null),('664445444848');
SELECT * from nn_ex_3

set search_path to daily;

drop table if EXISTS nn_ex_4; 
CREATE table nn_ex_4(
	created_on TIMESTAMP not NULL DEFAULT CURRENT_TIMESTAMP 
);
INSERT into nn_ex_4 DEFAULT VALUES;
SELECT * from nn_ex_4