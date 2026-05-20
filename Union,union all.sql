create database fruits
use fruits
create table basket1(id int,name varchar(15))
insert into basket1
values(1,'apple'),
	  (2,'banana')

create table basket2(id int,name varchar(15))
insert into basket2
values(1,'grapes'),
	  (2,'apple')

select * from basket1
union --it elemintaes the duplicates
select * from basket2

select * from basket1
union all--it includes duplicates also
select * from basket2
