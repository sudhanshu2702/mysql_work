/*****AdvanceInnerJoin With Multiple table*****/
select
emp.emp_no,
emp.first_name,
emp.last_name,
mgr.position,
from_date,
salh.current_salary,
salh.sal_from_date,
salh.sal_to_date
from 
Employees emp inner join
Managers mgr on emp.sid_Employee = mgr.sid_Employee inner join
Salary_History salh on emp.sid_Employee = salh.sid_Employee;