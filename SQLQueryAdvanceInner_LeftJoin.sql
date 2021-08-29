/*Scenario - what if you have to find all those employees who have not provided
the coorect information about their location. So in that case you have to join three
table with one inner join and one left join.*/
select
emp.emp_no,
emp.first_name,
emp.last_name,
emplo.PostalCode localcode,
geo.PostalCode globalcode
from
Employees emp inner join
Employee_Location emplo on emp.sid_Employee = emplo.sid_Employee left join
Geography geo on emplo.PostalCode = geo.PostalCode
order by emp.emp_no;