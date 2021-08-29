/*Concatenation of two column and insert the value in a new column of a table*/
select * from Employee_Movements_History;

update Employee_Movements_History
set Test = cast(cast(sid_Employee as varchar(8)) + cast(sid_Department as varchar(8)) as int)
select * from Employee_Movements_History;