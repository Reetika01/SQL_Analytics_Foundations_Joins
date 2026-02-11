# for joins
create database Joins;
use Joins;
# in joins number of column need not to be same 
create table employee (empno integer, ename varchar(30), job varchar(30), mgr integer, deptno integer);
insert into employee values (111, 'Ramesh', 'Analyst', 444, 10),
(222, 'Khilan', 'clerk', 333, 20),
(333, 'Kaushik', 'manager', 111, 10),
(444, 'Chaitail', 'engineer', 222, 40);
select*from employee;
create table department (deptno integer, dname varchar(30), loc varchar(30));
insert into department values (10, 'inventory', 'hyderabad'),
(20, 'finance', 'bangalore'),
(30, 'hr', 'mumbai');
select*from department;
# inner join
select employee.ename, employee.job, department.dname,department.loc from employee
inner join
department on employee.deptno = department.deptno;
# left join
 
select employee.ename,employee.job,department.dname,department.loc from employee,department
where employee.deptno = department.deptno;
select employee.ename, employee.job, department.dname,department.loc from employee
left join
department on employee.deptno = department.deptno;

#right join
select employee.ename,employee.job,department.dname,department.loc from employee,department
where employee.deptno = department.deptno;
select employee.ename, employee.job, department.dname,department.loc from employee
right join
department on employee.deptno = department.deptno;
# full join
select employee.ename,employee.job,department.dname,department.loc from employee,department
where employee.deptno = department.deptno;
select employee.ename, employee.job, department.dname,department.loc from employee
full join
department on employee.deptno = department.deptno;
# rollback - used to undo command that have not been saved 
# multiple joins
create view employees_department as
select employee.ename, employee.job, department.dname, department.loc
from employee, department;
select*from employees_department;
# to drop view -  
# drop view employee; 
# truncate table department; to delete row or to delete the data from the table
# alter table tablename ADD columnnmame COLUMN-definition
# ALTER TABLE MODIFY  (Column definiton) (to modify existing attribute or add attribute)

# subqueries with the select statement 
Select*from employee where empno in (select empno from employee where deptno > 10);

# update in subqueries
update employee
set mgr = mgr*1
where empno in (select empno from department where deptno >=10);

# grant(to give permission) & revoke(to take permission back): DCL---  for files
# rollback to undo ( TCL)
# save point to save till the point you want to save without rolling back (TCL)
# commit save all transactions/commands and you cannnot undo it
# group by is used to arrange identical data into groups


# UNIT 3- transaction command 

# Normalization: process to help the data organisation and it reduce the redendency
# means to remove the cache, duplicate, unneccessary, anomalies(generated from insert, delete, update)
# it helps in building large relationshionships among data
# it helps in organising data in database
# it divides larger tables into smaller links

# types of normalalization  NF(normal form)
# 1- 1NF (Atomic values); remove repeated groups
# 2- 2NF (relation with 1NF) dependent primary key; eliminate partial function(incomplete transaction or queries which we dont need )
# 3- 3NF (when data is in 2NF form) to remove extra keys like candidate (transative dependency) or attribute from deletion $ updation

# 4- 3.5NF OR BCNF- (boyce codd normal form)- advance version of 3NF, its rules are strictly than 3NF, all fumnctional dependecy is on super key
# we use BCNF coz 3NF dont remove all the dependecy so we use BCNF

# rules for BCNF in dbms
# it should satisfy all the condition of 3NF
# for any functional dependency candidate or super key should be present.

# 5- 4NF or 3.5 or BCNF 
# not multi value dependency and eliminate multivalues

# 6- 5NF; to remove or eliminate the joints dependency (when creating joins)

# ADVANTAGES OF NF
# it minimize data redendency
# greater overall data organization
# data consistancy within the database
# flexible database design

# DISADVANTAGES OF NF
# you cannot start building the database before knowing what the users need
# its performances degrades when the NF is in higher form (4NF or 5NF)
# it is very time consuming
# careless database designing may leads to bad database 
