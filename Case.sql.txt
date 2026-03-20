create database office

use office
create table employeeee(empid int primary key,
					  name varchar(15),
					  dept varchar(15),
					  salary decimal(10,2),
					  gender varchar(10),
					  joining_date date)

select * from employeeee

insert into employeeee
values(1,'bhavya','IT',25000,'Female','2023-04-21')

insert into employeeee
values(2,'Sukanya','HR',28000,'Female','2024-04-21'),
	   (3,'karthik','sales',32000,'male','2025-04-21'),
	   (4,'anusha','marketing',35000,'Female','2023-05-21'),
	   (5,'asha','IT',42000,'Female','2024-06-21'),
	   (6,'chandan','HR',39000,'male','2022-06-21'),
	   (7,'chethan','sales',26000,'male','2021-04-21'),
	   (8,'bhoomi','marketing',25000,'Female','2023-11-21'),
	   (9,'Bhargavi','IT',41000,'Female','2022-10-21'),
	   (10,'Kiran','HR',27000,'male','2021-09-21'),
	   (11,'Arun','sales',33000,'male','2024-05-21'),
	   (12,'Bharath','marketing',24000,'male','2021-02-21')
	
select * from employeeee
where name LIKE '[SB]%'


alter table employeeee
add surname varchar

alter table employeeee
add lastname varchar(10)


--case

update employeeee
set surname=
case
	when empid=1 then 'A'
	when empid=2 then 'B'
	when empid=3 then 'C'
	when empid=4 then 'D'
	when empid=5 then 'E'
	when empid=6 then 'F'
	when empid=7 then 'G'
	when empid=8 then 'H'
	when empid=9 then 'I'
	when empid=10 then 'J'
	when empid=11 then 'K'
	when empid=12 then 'L'
end

update employeeee
set surname=
case
	when empid =3 then 'krishna'---empid 3 and 4 will change remaining all are same
	when empid =4 then 'kaveri'
	else surname
end

update employeeee
set surname=
case
	when empid =3 then 'krishna'---empid 3 and 4 will change, rest of all will be HI
	when empid =4 then 'kaveri'
	else 'HI'
end

update employeeee
set lastname=
case
	when empid =3 then 'krishna'---empid 3 and 4 will change remaining all are same
	when empid =4 then 'kaveri'
	else lastname
end

update employeeee
set lastname=
case
	when empid =3 then 'krishna'---empid 3 and 4 will change, rest of all will be HI
	when empid =4 then 'kaveri'
	else 'HI'
end

--changing the column name
exec sp_rename 'employeeee.name','f1','column'--exec--execute,sp-stored procedure




