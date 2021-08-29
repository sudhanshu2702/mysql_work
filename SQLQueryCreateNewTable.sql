/*Create a New table in DB*/
use Human_Resources
select * from Gender;

select
emp.emp_no,
emp.first_name,
emp.birth_date,
emp.hire_date,
gen.gender_name
into
empFemaleBirthdays
from 
Employees emp inner join
Gender gen on emp.gender = gen.gender
where 
gen.gender = 'F'
order by
emp.birth_date;

select * from empFemaleBirthdays;