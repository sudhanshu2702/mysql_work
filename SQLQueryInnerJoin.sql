/********SQL JOINS********/
use Human_Resources;
select * from dbo.Employees;
select * from dbo.Gender;


/**Inner Join**/
select 
[emp_no],
[birth_date],
[first_name],
[gender_name],
emp.gender

from
Employees emp inner join 
Gender gen on gen.gender = emp.gender;



