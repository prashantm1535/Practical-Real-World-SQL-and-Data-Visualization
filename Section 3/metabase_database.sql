create database if not exists metadata;
show databases;
use metadata;
drop database if exists metadata;
show databases;

create database if not exists metabase;
show databases;
use metabase;
show tables;
select * from upload_property_transaction_mod_20240105224533 limit 1000;

/*
you can rename tables locked with a LOCK TABLES statement, 
provided that they are locked with a WRITE lock or are the product of renaming 
WRITE-locked tables from earlier steps in a multiple-table rename operation. 

For example, this is permitted:
*/
LOCK TABLE old_table1 WRITE;
RENAME TABLE old_table1 TO new_table1,
             new_table1 TO new_table2;

lock table upload_property_transaction_mod_20240105224533 write;

rename table upload_property_transaction_mod_20240105224533 
to upload_property_transaction_mod;


# This is not permitted:
  
LOCK TABLE old_table1 READ;
RENAME TABLE old_table1 TO new_table1,
             new_table1 TO new_table2;

# The above statement is equivalent to the following ALTER TABLE statement:
ALTER TABLE old_table RENAME new_table;

lock table up_property_tnx_mod read;
rename table up_property_tnx_mod
to  property_tnx_mod;


select * from property_tnx_mod;

# Now create a new table "employees"

create table employees (
    EmployeeID int,
    FirstName varchar(255),
    LastName varchar(255),
    Department varchar(255),
    Salary decimal(10, 2)
);

show tables;
select * from employees;

# to insert data to employees table

INSERT INTO employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES (1, 'John', 'Doe', 'HR', 50000),
(2, 'Jane', 'Smith', 'IT', 60000),
(3, 'Alice', 'Johnson', 'Sales', 60000),
(4, 'Bob', 'Brown', 'IT', 62000),
(5, 'Carol', 'White', 'HR', 49000),
(6, 'Emily', 'Davis', 'Marketing', 58000);

# select clause to retrive data from employees table.
-- example 1:
select * from employees;

-- example 2:
select FirstName, LastName, Salary from employees;

-- example 3:
select Department, avg(Salary) as salary_average 
from employees 
group by Department;

-- example 4:
select * from employees 
where Department = "Marketing";

