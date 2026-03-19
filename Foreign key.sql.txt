use company

create table emp_off(empid int primary key,
                     name varchar(15),
                     dept varchar(10),
                     salary decimal(10,2));

insert into emp_off
values(1,'Abc','sales',20000),
      (2,'bob','sales',23000)
insert into emp_off
values(3,'Abc','sales',20000),
      (4,'bob','sales',23000)


select * from emp_off
select * from emp_per
create table emp_per(id int,
                     phone_number bigint,
                     email varchar(20));
  
insert into emp_per
values(1,1111111,'1@gmail.com')

alter table emp_per
add constraint ep_id_fk
foreign key(id)
references emp_off(empid)

insert into emp_per
values(2,222,'3@gmail.com')

insert into emp_per
values(5,154,'5@gmail.com')



