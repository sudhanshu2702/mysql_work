/****Left Join****/
select 
[emp_no],
[first_name],
[last_name],
[position],
[from_date]

from 
Employees emp left join 
Managers mangr on mangr.sid_Employee = emp.sid_Employee
order by 
4 desc;
