-- select a.column ,b.column 
    -- from table_name a
    -- join table_name b
-- on a.related column=b.related COLUMN


-- Show employess working in the same department.
select 
    *
from "stores"."employees";
select 
    *
from "stores"."departments";

show search_path;
set search_path to stores;
-- Show employess working in the same department.


select 
e.emp_id,
e.emp_name,
d.dept_id,
d.dept_name
from 
employees as e join departments as d
on e.dept_id=d.dept_id
GROUP by e.emp_id,
e.emp_name,
d.dept_id,
d.dept_name
ORDER by d.dept_id ASC,e.emp_name;




select 
    e.emp_name,
    e.role,
    d.emp_name as manager,
    d.role as manager_role,
    e.dept_id
FROM
    "stores"."employees" e 
JOIN
    "stores"."employees" d 
on
       e.dept_id=d.dept_id
    and e.emp_id<>d.emp_id 
    and e.role<>d.role
    and e.store_id=d.store_id
ORDER by    
    e.dept_id,e.emp_name
limit 100;

-- Find pairs of cities in the same state
set search_path to customers;

select 
count(*) 
FROM
    "customers"."addresses" c1
join 
    "customers"."addresses" c2
on 
    c1.state=c2.state
    and c1.city<>c2.city
where c1.state='Bihar'
limit 100

-- Using CTE

with 
    distinct_city as (
        select DISTINCT state,city from "customers"."addresses"
    )
select 
c1.city,c2.city
FROM
    distinct_city c1
join 
    distinct_city c2
on 
    c1.state=c2.state
    and c1.city>c2.city


-- Indentifies senior junior pairs within each department

select * from "stores"."employees"

SELECT
e.emp_name as senior,
e.salary as senior_salary,
s.emp_name as junior,
s.salary as junior_salary
FROM
    "stores"."employees" as e
JOIN
    "stores"."employees" as s 
on 
    e.dept_id=s.dept_id
    and e.store_id=s.store_id
    and e.salary>s.salary
ORDER by 
    e.emp_name