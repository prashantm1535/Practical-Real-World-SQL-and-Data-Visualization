example 1:
select * 
from employees;

example 2:
select FirstName, LastName, Salary 
from employees;

example 3:
select Department, avg(Salary) as salary_average 
from employees 
group by Department;

example 4:
select * 
from employees 
where Department = "Marketing";

