create database ece;
use ece;
create table students(
student_ID int primary key,
student_name varchar(50),
student_age int,
student_city varchar(50),
student_mail varchar(50));
show tables;
#structure of table/datatype
describe students;
#insert value/row into table
insert into students values
(101,'akilesh',23,'chennai','akileshv315@gmail.com');
#dql select 
select * from students;
insert into students values
(102,'anto',24,'alikol','anto2@gmail.com'),
(103,'petta',25,'kanniyakumari','petta2@gmail.com'),
(104,'derry',26,'k7puthandurai','derry2@gmail.com'),
(105,'santhosh',27,'mannargudi','santhosh2119@gmail.com');
select * from students;
#distinct avoid duplicates
select distinct Student_age from students;
select distinct * from students;
#where filter 
select * from students where Student_age = 24;
select * from students where Student_age <= 24;
alter table students
add student_contact int;
select * from students;
#modify column
alter table students modify Student_name varchar(100);
alter table students modify student_contact varchar(100);
alter table students modify student_contact int;
alter table students modify Student_name varchar(100);
alter table students rename column Student_name to name;
select * from students;
alter table students drop column student_contact;
select * from students;
#drop table
drop table students;
#truncate
truncate table students;
select * from students;
#rename table
rename table students to stud;
insert into stud values
(102,'anto',24,'alikol','anto2@gmail.com'),
(103,'petta',25,'kanniyakumari','petta2@gmail.com'),
(104,'derry',26,'k7puthandurai','derry2@gmail.com'),
(105,'santhosh',27,'mannargudi','santhosh2119@gmail.com');
select * from stud;
#update
SET SQL_SAFE_UPDATES=0;
update stud set Student_city = 'mannargudi' where Student_id=102;
SET SQL_SAFE_UPDATES=1;
select * from stud;
#delete
delete from stud where Student_id=102;