#for creating a database
create database myDB;
use myDB;
 # use command is use to view pre existing database. 
 
 create table mytable (ID integer, firstName varchar(20), lastName varchar(30));
 # interger use for null values and numbers, # varchar used for inserting alphabets
 
 insert into mytable values (1,'reetika','shekhawat');
 insert into mytable values (2, 'priyanka','chiller');
 select*from mytable; # * is used to display the content of the table 
 update mytable # to update existing data from the table
 set lastName = 'singh'
 where Id = 2;
 select*from mytable where ID = 1;       # select is used to retrive the data from the table
 show databases;   # ddl=create table, database, column row define, # dml; alter, update, delete, retrive, 
 # varchar is used to add charcter special charcters like # @ numbers,  # char is used to  specify fixed numbers of letters
 # to add null values we need to use INT( like varchar, char ) in that particular data # TEXT is used to define multiple text
 # create a new table
 create table pgdm(rollNumber int, firstName varchar(20), lastName varchar(20), marks int); 
 insert into pgdm values(01, 'Reetika', 'shekhawat', 90), (02, 'priyanka', 'chiller', 95);
 select*from pgdm;
 
 #lets have some table
 
 create table grades (id int, 
 firstname varchar(40), 
 lastname varchar(40), 
 gender enum('F', 'M'), 
 quiz int, 
 final int, 
 passfail varchar(2));
 # enum is used to specify particular words or values like male M female F or pass p fail f 
 insert into grades values
(1, 'reetika', 'shekhawat', 'F', 4, 99, 'P'),
(2, 'ram', 'kumar', 'M', 3, 78, 'p'),
(3, 'priyanka', 'chiller', 'F', 3, 89, 'P'),
(4, 'shakitam', 'rao', 'F', 4, 67, 'P'),
(5, 'noni', 'singh', 'F', 6, 22, 'F');

select*from grades; 
 select id,firstname from grades;
 select*from grades where firstname = 'noni';
 select*from grades where gender = 'M';
 select*from grades where final='=>4';
 select*from grades where firstname = 'shakitam' OR firstname = 'ram';
 select*from grades where firstname = 'priyanka' and gender = 'F';
 # both and/or are used
 select*from grades where quiz > 3;
 select*from grades where quiz > 2 AND gender = 'M';
 select*from grades where firstname = 'ram' or firstname = 'noni';
 select*from grades where firstname = 'lagford' or lastname = 'shekhawat';
 select*from grades where firstname IN ('reetika', 'priyanka', 'noni');
 select*from grades where firstname NOT IN ('reetika', 'priyanka', 'noni');
select*from grades where lastname LIKE('s%');
select*from grades where lastname LIKE('ch%');
select*from grades where firstname LIKE('%ka');
select*from grades where lastname LIKE('%a%');
 select*from grades where lastname NOT LIKE('ch%');
 select*from grades where lastname NOT LIKE('%ka%');
 # where quiz NOT BETWEEN 2 and 3
 select*from grades where quiz not between 2 and 3;
 select*from grades where final >= 67;
 select*from grades where final>= 67 and quiz <=6 AND firstname like ('re%');
 select count(*) from grades where quiz >=4;
 select*from grades order by quiz;
 select*from grades order by final;
 select*from grades order by quiz desc;
 select*from grades order by passfail;
 select*from grades order by firstname;
 # select 4 records randomly
 select*from grades
 order by rand()
 limit 3;
 # for creating view from a single table
 create view grades1 as
 select firstname, lastname
 from grades
 where id <4;
 select*from grades1;
 select count(*) from grades;
 select count(*) from grades where firstname = "r%";
 select count(*) from grades group by quiz;
 select count('reetika')from grades;
 select count(*) from grades group by quiz having count(*)>1;
 select avg(quiz) from grades;
 select max(id) from grades;
 select min(id) from grades;
 # limit is used to get the limited data for example we need only 3 rows.
 select quiz from grades
 limit 3;
 select*from grades
 limit 3; 