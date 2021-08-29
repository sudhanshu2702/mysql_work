/****Right Join****/
select
gen.gender,
gen.gender_name,
emp_no,
birth_date,
first_name,
last_name
from 
Employees emp right join
Gender gen on emp.gender = gen.gender;