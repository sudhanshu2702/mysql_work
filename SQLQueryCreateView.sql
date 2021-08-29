/*Create a view through query*/
select * from Management.EmployeeManagerTree;
create view EmpMngrview as
select 
emp1.sid_Employee,
emp1.FullName,
emp1.sid_Manager,
emp2.FullName as ManagerName
from 
Management.EmployeeManagerTree as emp1 left join 
Management.EmployeeManagerTree as emp2 on emp1.sid_Manager = emp2.sid_Employee; 

Select * from EmpMngrview;