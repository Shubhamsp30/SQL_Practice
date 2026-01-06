-- show employess working in the same department
select * from "stores"."employees"
select * from "stores"."departments"

select 
se.emp_id,se.emp_name,sd.dept_name
FROM
"stores"."employees" as se 
left JOIN
"stores"."departments" as sd 
on 
se.dept_id=sd.dept_id
ORDER by sd.dept_name ASC;


-- pairs of cities in same state
select * from "customers"."addresses"

