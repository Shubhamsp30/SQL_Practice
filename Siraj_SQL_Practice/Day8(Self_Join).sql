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
