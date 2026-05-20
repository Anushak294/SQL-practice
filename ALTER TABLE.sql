create table emp3(id int,
                  name varchar(20),
                  age int,
                  dept varchar(10),
                  email varchar(10));

select * from emp3



--null to not null
alter table emp3
alter column name varchar(18) not null

--changing datatypes
alter table emp3
alter column age decimal(10,2)

--length of varchar
alter table emp3
alter column email varchar(25)

--not null to null
alter table emp3
alter column name varchar(20) null

--primary key,foreign key
--check,unique,default

alter table emp3
alter column id int not null

alter table emp3
add constraint emp3_id_pk
primary key(id)

alter table emp3
add constraint emp3_email_uq
unique(email)

alter table emp3
add constraint emp3_age_check
check(age>20)

alter table emp3
add constraint emp3_dept_default
default('IT') for dept
