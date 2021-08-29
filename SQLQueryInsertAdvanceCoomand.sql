/*Some Insert advance command : Let's set up a scenario, An employee used to work 
in an organisation for couple of years and then left.After few years, he/she again 
joined the same organisation. So, HR wants to activate the same old employee_id in DB*/

select * from Employees where emp_no = '10021';
select * from Current_Personnel where emp_no = '10021';
select * from Current_Personnel;


select 'Employee' as T1, * from Employees where emp_no in (10021);
select 'Emp Location' as T2, * from Employee_Location where emp_no in (10021);
select 'Emp Movements' as T3, * from Employee_Movements_History where emp_no in (10021);
select 'Emp Position' as T4, *  from Employee_Position_History where emp_no in (10021);
select 'Emp Salary' as T5, * from Salary_History where emp_no in (10021) order by 5 desc;

insert into Current_Personnel (sid_Employee, emp_no, current_salary,current_location, sid_Department,sid_Location,sid_position)
select
emp.sid_Employee,
emp.emp_no,
(select max(current_salary) from Salary_History where emp_no  = emp.emp_no) as current_salary,
el.City,
emh.sid_Department,
el.sid_Location,
eph.sid_Position
from
Employees emp inner join
Employee_Location el on emp.sid_Employee = el.sid_Employee inner join
Employee_Movements_History emh on emp.sid_Employee = emh.sid_Employee inner join
Employee_Position_History eph on emp.sid_Employee = eph.sid_Employee
--Salary_History sh on emp.sid_Employee = sh.sid_Employee
where
emp.emp_no = '10021';

select * from Current_Personnel where emp_no = '10021';

/*To handle the null value in the sid_Location let's go through dbo.Geography*/
select * from Geography where City = 'Dunkerque';

/*Now perform a query between Current_Personnel table and Geography Table*/
select *
from Current_Personnel cp inner join
Geography geo on geo.City = cp.current_location
where
cp.sid_Employee = 21;

update Current_Personnel
set sid_Location = geo.sid_Location
from Current_Personnel cp inner join 
Geography geo on geo.City = cp.current_location
where 
cp.sid_Employee = 21;

select * from Current_Personnel where emp_no = '10021';