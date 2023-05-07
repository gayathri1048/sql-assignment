-- question 1


create database consultation;
create table doctor(doc_id int primary key not null,doc_name varchar(30) not null,specialization varchar(30) not null);
insert into doctor values(101,'sekhar','dentist'),(102,'shilpa','gynacologist'),(103,'pooja','pyschologist');
create table patient(patient_id int primary key not null,patient_name varchar(30) not null,doc_name varchar(30) not null,disease varchar(30),reviews varchar(100) not null);
insert into patient values(201,'rani','sekhar','teeth pain','pleasant treating doctor');
insert into patient values(202,'roopa','shilpa','thyroid','taking lot of care'),(203,'ravi','raju','bipolar disorder','well managed');
create table appointment as select d.doc_name,p.patient_id,p.patient_name from doctor d left join patient p on d.doc_name=p.doc_name;
select * from appointment;
create table reviews as select p.doc_name,p.reviews from patient p;
select * from reviews;



-- question2

create table contact(id int not null,email varchar(30),fname varchar(30),lname varchar(30),company varchar(30),active_flag int,opt_out int);
insert into contact values(123,'a@a.com','kian','seth','ABC',1,1),(133,'b@a.com','neha','seth','ABC',1,0),(234,'c@c.com','puru','malik','CDF',0,0),(342,'d@d.com','sid','maan','TEG',1,0);
-- 1
select * from contact where active_flag=1;
-- 2 
delete from contact where opt_out=1;
-- 3 
delete from contact where company='ABC';
-- 4
insert into contact values(658,'mili@gmail.com','mili','','DGH',1,1);
-- 5
select distinct company from contact;
-- 6
update contact set fname='niti' where id=658;




-- 3 question
create table customer(customer_id int primary key not null,cust_name varchar(30),customer_city varchar(30),grade int,salesman_id int not null);
insert into customer values(3002,'Nick Ramindo','New york',100,5001),(3007,'Brad Davis','New York',200,5001),(3005,'Graham Zusi','California',200,5001),(3008,'Julian Green','London',300,5002),(3004,'Fabin Johnson','Paris',300,5006),(3009,'Geoff Cameron','Berlin',100,5003),(3003,'Jozy Altidor','Mascow',200,5007),(3001,'Brad Guzan','London',null,5005);
select * from customer;
create table salesmans(salesman_id int primary key not null,name varchar(30),salesman_city varchar(30),commission float);
insert into salesmans values(5001,'james Hoog','New york',0.15),(5002,'Nail Knite','London',0.13),(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13),(5003,'Lauson','San Jose',0.12);
select * from salesmans;
select c.cust_name,c.customer_city,c.grade,s.name,s.salesman_city from customer c,salesmans s where c.grade<100 order by c.customer_id asc;




