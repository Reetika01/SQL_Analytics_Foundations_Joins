create database practice1;
use practice1;

create table workers(
worker_id int, first_name varchar(50), last_name varchar(50), salary int, joining_date datetime, department varchar(50));
insert into workers value(001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
select*from workers;

Create table bonus(worker_ref_id int, bonus_date datetime, bonus_amount int);
insert into bonus value(1, '2016-02-20 00:00:00', 5000),
(2, '2016-06-11 00:00:00', 3000),
(3, '2016-02-20 00:00:00', 4000),
(1, '2016-02-20 00:00:00', 4500),
(2, '2016-06-11 00:00:00', 3500);
select*from bonus;

create table title(worker_ref_id int, worker_title varchar(50), afected_from datetime);
insert into title value(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Excutive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst.Manager', '2016-06-11 00:00:00'),
(7, 'Excutive', '2016-06-11 00:00:00'),
(6, 'lead', '2016-06-11 00:00:00'),
(3, 'lead', '2016-06-11 00:00:00');
select*from title;

# cheat code- DATE 'yy-mm-dd'
# TIME- 'hh:mm:ss'
#DATETIME- 'yyyy-mm-dd hh:mm:ss'
# relational algebra: Basic set of operations(,-,sum,max, min, etc)
# relational calculus (higher level of operations queries)
# calculus : set operations (union(combine same or joins but both table should have same coulmn and rows/ 
# intersection (select 2 table on the basis of statement- syntex- select column from table 1 intersect select column from table 2 , predefined result in accending order)
# )/ join)

# selection donated by sigma sign
# projections donated by pi sign (eliminate duplicate values) 
# minus (select column from table 1 MINUS select column from table 2)

# intersection, union and minus- to perform these operations you need equal number of columns 

# write the sql query to fetch first name & last name as employee name from employee table using the alias name as worker_name (use concat to join two columns)
select concat(first_name,' ', last_name) as workers_name from workers;

# write an sql query to fetch first name from worker table in upper case
select UPPER(first_name) from workers;
select LOWER(first_name) from workers;

# write an sql query to print all workers details from the worker table order by first name ascending
select*from workers
ORDER By first_name ASC;
select*from workers
ORDER By first_name DESC;

# write an sql query to print details of the workers who are also managers
# write sql query to fetch to duplicate records having matching data in some fields of a table
# write an query to show only even rows from table
# write query to fetch intersecting records of two table
# write query to show the top n(any number 5-6 etc)  records of a table
# write query to show one row twice in results from a table (Union use)
# write query to fetch three max salary from table


# Ques1: write an sql query to print details of the workers who are also managers
select bonus.bonus_date,title.worker_title from bonus
inner join
title on bonus.worker_ref_id = title.worker_ref_id
where worker_title= 'manager';

# write sql query to fetch to duplicate records having matching data in some fields of a table
create table lol 
select first_name, last_name from workers;
select*from lol;

 # write an query to show only even & odd rows from table id
 select * from workers where mod (worker_id,2)=0;
 select * from workers where mod (worker_id,2)=1;
 
 # write query to show the top n(any number 5-6 etc) records of a table
 select*from workers
 where worker_id<=005;
 
 select*from workers
 where worker_id>=005;
 # to find the 1st record from the table
 select*from workers
 where worker_id=1;
 
# write an sql query to find 2nd highest integer

select MAX(worker_id)
from workers;