create table Department(
	dpm_id int primary key not null,
	dpm_cd varchar(255) unique not null,
	dpm_name varchar(255),
	update_date TIMESTAMP not null,
	update_user varchar(255),
	create_date TIMESTAMP not null,
	create_user varchar(255)
);


create table Employee(
	emp_code int  primary key not null,
	emp_dpm_id int not null,
	emp_name varchar(255),
	emp_age int,
	emp_gender boolean,
	emp_salary float,
	emp_resign timestamp,
	update_date timestamp,
	update_user varchar(255),
	create_data timestamp,
	create_user varchar(255),
	CONSTRAINT fk_emp_dpm_id
		FOREIGN KEY (emp_dpm_id)
		REFERENCES Department(dpm_id)
);

----Chap 1 UPDATE INSERT DELETE-----

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1111', '1', 'Akira', '20', '1', '15000.00');

update employee
set emp_name = 'Opak'
where emp_code = '55002';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1112', '1', 'Nataya', '27', '0', '17000.00');

update employee
set emp_salary = '17000.00'
where emp_salary = '15000.00';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1113', '1', 'Somsri', '22', '0', '13000.00');

update employee
set emp_gender = '0'
where emp_name = 'Kati';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1114', '1', 'Benjamin', '25', '1', '18000.00');

update employee
set emp_salary = '15000.00'
where emp_name = 'Mana';

update employee
set emp_salary = '18000.00'
where emp_code = '56001';

update employee
set emp_age = '32', emp_name = 'Natacha'
where emp_name = 'Nicha';

update employee
set emp_salary = '55000.00' 
where emp_age = '50';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1115', '1', 'Chaya', '17', '0', '10000.00');

update employee
set emp_salary = '29000.00' 
where emp_age between 31 and 34;

update employee
set emp_salary = '13000.00'
where emp_age < 25 and emp_name LIKE 'A%';

delete from employee where emp_name='Sorasak';

update employee 
set emp_salary = emp_salary + 15000.00
where emp_age > 50;

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1116', '1', 'Darwin', '23', '1', '17000.00');

update employee
set emp_name = 'Taranya' , emp_gender = '0'
where emp_name = 'Tara';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1117', '1', 'Arnon', '30', '1', '30000.00');

delete from employee where emp_code = '61002';

delete from employee where emp_age < 22 and emp_gender ='0';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1118', '1', 'Darla', '30', '0', '22000.00');

delete from employee where emp_age between 40 and 45 and emp_salary > 29000.00; 

delete from employee where emp_name LIKE 'P%';

insert into Employee(emp_code, emp_dpm_id, emp_name, emp_age, emp_gender, emp_salary)
	values ('1119', '1', 'Kamol', '26', '0', '15000.00');


----Chap 2 SELECT, WHERE-----

select emp_name, emp_gender, emp_dpm_id from employee 
where emp_gender = '0';

select emp_name, emp_gender, emp_dpm_id from employee 
where emp_gender = '1';

select emp_code, emp_name, emp_salary from employee
where emp_salary = '17000.00';

select * from employee where emp_name = 'Janjira';

select emp_code, emp_name, emp_age, emp_salary from employee
where emp_code::varchar like '43%';   

select emp_name, emp_age, emp_salary from employee
where emp_name like '%A%';

select emp_name, emp_age, emp_gender from employee
where emp_name like 'J%';

select emp_name, emp_salary from employee
where emp_name like '%n';

select emp_name from employee
where emp_name not like '%m%';

select emp_name from employee
where emp_name not like 'S%';

select emp_code, emp_name, emp_age from employee
where emp_age between 20 and 25;

select * from employee where emp_salary between 10000.00 and 20000.00;

select emp_code, emp_name, emp_age ,emp_dpm_id, create_date from employee 
where create_date between '1997' and '2007';

select emp_code, emp_name, emp_age from employee
where emp_age not between 20 and 30;

select emp_name, emp_salary from employee
where emp_salary not between 10000.00 and 20000.00;

select emp_name, emp_age, emp_salary from employee
where emp_age > 30;

select emp_name, emp_age, emp_salary from employee
where emp_age < 30;

select emp_name, emp_salary from employee
where emp_salary > 30000.00;

select * from employee
where emp_salary >= 20000.00 and emp_age <= 30;

select * from employee 
where emp_resign is null;

select * from employee 
where emp_resign is not null;

select emp_code, emp_name, emp_age from employee
where emp_age in('20','25','30');

select emp_code, emp_name, emp_age from employee
where emp_age not in('20','25','30');

select emp_code, emp_name, emp_age, emp_salary from employee
where emp_salary in('10000.00','20000.00','30000.00');

----------Chap 3 Select , Order by ---------------------------------------------

select * from employee 
order by emp_name asc;

select * from employee 
order by emp_name desc;

select emp_code, emp_name, emp_age, emp_salary from employee 
where emp_resign is not null
order by emp_salary asc;

select emp_code, emp_name, emp_age, emp_salary from employee 
where emp_resign is not null
order by emp_salary desc;

select emp_name, emp_age from employee
where emp_gender = '0' 
order by emp_age asc;

select emp_name, emp_age from employee
where emp_gender = '1' 
order by emp_age desc;

select emp_code, emp_name, emp_age from employee
where emp_age > 30
order by emp_code asc;

select emp_code, emp_name, emp_salary from employee
where emp_salary < 20000.00
order by emp_code desc;

select emp_code, emp_name, emp_age from employee
where emp_age != '30'
order by emp_name asc;

select emp_name, emp_gender, emp_age, emp_salary from employee
where emp_age != '30'
order by emp_salary asc;

select emp_name, emp_gender, emp_age, emp_salary from employee
where emp_gender = '1' and emp_salary > 25000.00
order by emp_age asc;

select emp_name, emp_age from employee
where emp_age between 20 and 25
order by emp_name desc;

select emp_name, emp_salary from employee
where emp_salary between 10000.00 and 25000.00
order by emp_salary desc;

select emp_code, emp_name from employee
where emp_code between 55001 and 57002
order by emp_name asc;

select emp_code, emp_name, emp_age, emp_salary from employee
where emp_salary >= '25000.00'
order by emp_age desc;

select * from employee
where emp_salary <= '25000.00'
order by emp_age desc;

select * from employee
where emp_age <= '35'
order by emp_age desc;

select emp_name, emp_age from employee
where emp_age >= '50'
order by emp_age asc;

select emp_code, emp_name, emp_gender, emp_age from employee
where emp_gender = '0' and emp_age > 25
order by emp_name desc;

select emp_name, emp_age, emp_gender, emp_salary from employee
where emp_age > 40
order by emp_salary desc;

select emp_name, emp_salary, emp_resign from employee
where emp_resign is not null 
order by emp_salary asc;

select emp_name, emp_salary, emp_gender, emp_age  from employee
where emp_resign is not null and emp_gender = '0'
order by emp_age desc;

select emp_name, emp_age, emp_salary, emp_resign  from employee
where emp_resign is not null and emp_gender = '1'
order by emp_salary desc;

select * from employee
where emp_gender = '1' and emp_code > 55001
order by emp_code asc;

select emp_name, emp_age, emp_salary from employee
where emp_age > 40 and emp_salary < 35000.00 
order by emp_name desc;

-------------CHap 4 Group by , Order by ---------------------------------------

select emp_dpm_id, min(emp_age) from employee 
group by emp_dpm_id;

select emp_dpm_id, max(emp_salary) from employee 
group by emp_dpm_id;

select emp_dpm_id, max(emp_age) from employee 
group by emp_dpm_id;

select emp_dpm_id, min(emp_salary) from employee 
group by emp_dpm_id;

select emp_dpm_id, avg(emp_salary) from employee 
group by emp_dpm_id;

select emp_dpm_id, sum(emp_salary) from employee 
group by emp_dpm_id;

select emp_dpm_id, sum(emp_age) from employee 
group by emp_dpm_id;

select emp_name, emp_dpm_id from employee
where emp_gender = '0'
order by emp_name asc;

select emp_name, emp_dpm_id from employee
where emp_gender = '1'
order by emp_name desc;

select emp_name, emp_dpm_id ,dpm_name from employee
join department on emp_dpm_id = dpm_id
where dpm_name in('Sales' , 'Human Resource');

select emp_name, emp_dpm_id ,dpm_name from employee
join department on emp_dpm_id = dpm_id
where dpm_name in('Developer', 'Project Meneger', 'System Analysis', 'Besiness Analysis');

select emp_name, emp_dpm_id ,dpm_name from employee
join department on emp_dpm_id = dpm_id
where dpm_name not in('Sales' , 'Human Resource');

select emp_name, emp_dpm_id ,dpm_name from employee
join department on emp_dpm_id = dpm_id
where dpm_name not in('Developer', 'Project Meneger', 'System Analysis', 'Besiness Analysis');

select emp_name, emp_age ,emp_gender, emp_salary from employee
join department on emp_dpm_id = dpm_id
where dpm_name = 'System Analysis';

select count(*) from employee 
where emp_resign is null;

select count(*) from employee 
join department on emp_dpm_id = dpm_id
where dpm_name = 'System Analysis' and emp_resign is not null;

select emp_dpm_id ,count(emp_name) from employee 
group by emp_dpm_id;

select emp_dpm_id ,count(emp_name) from employee
where emp_gender = '0'
group by emp_dpm_id;

select emp_dpm_id ,count(emp_name) from employee
where emp_gender = '1'
group by emp_dpm_id;

select emp_name, emp_age, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_age between 30 and 45;

select emp_name, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_salary between 30000.00 and 45000.00;

select dpm_name , count(*) from employee
join department on emp_dpm_id = dpm_id 
group by dpm_name
order by count(*) desc
limit 1;

select dpm_name , count(*) from employee
join department on emp_dpm_id = dpm_id 
group by dpm_name
order by count(*) 
limit 2;

----------------Chap 5 Max Min Count avg Sum-----------------------------------------

select emp_name, emp_salary from employee
where emp_age = '47'
order by emp_salary desc
limit 1;

select emp_name, emp_salary from employee
where emp_resign is not null
order by emp_salary desc
limit 1;

--select emp_name, emp_age from employee
--where emp_resign is not null
--order by emp_salary desc
--limit 1;  same result with below 

select split_part(string_agg(emp_name ,  ',' order by emp_age desc)  , ',' , 1) as name, max(emp_age) as age
from employee
where emp_resign is not null

select emp_name, emp_age
from employee
where emp_gender = '0' and emp_resign is not null
order by emp_age desc
limit 1;

select emp_name, emp_age
from employee
where emp_gender = '0' 
order by emp_age 
limit 2;

select emp_name, emp_salary
from employee
where emp_gender = '1' 
order by emp_salary

select emp_name, emp_age
from employee
where emp_name like '%A%' and emp_gender = '1' and emp_resign is null 
order by emp_age 
limit 1

select emp_name, emp_salary, emp_gender
from employee
where emp_gender = '0' and emp_resign is not null 
order by emp_age
limit 1;

select count(*) from employee
where emp_gender = '0' and emp_salary < 27000.00;

select count(*) from employee
where emp_gender = '1' and emp_age > 40;

select count(*) from employee
where emp_resign is null; 

select count(*) from employee
where emp_resign is not null; 

select avg(emp_age) from employee
where emp_gender = '0';

select avg(emp_age) from employee
where emp_gender = '1';

select avg(emp_salary) from employee
where emp_gender = '1';

select avg(emp_salary) from employee
where emp_gender = '0';     --16

select sum(emp_salary) from employee
where emp_gender = '1';     --17

select emp_gender, sum(emp_salary) from employee
where emp_gender = '0'
group by emp_gender;        --18

select emp_gender, sum(emp_salary) from employee
where emp_gender = '1'
group by emp_gender;         --19

select sum(emp_age) from employee
where emp_resign is null;    --20

select count(emp_gender) from employee
where emp_age < 40;

select emp_gender, avg(emp_age) from employee
where emp_salary > 30000.00
group by emp_gender;

select emp_gender, sum(emp_salary) from employee
where emp_salary < 30000.00
group by emp_gender;

select emp_age, emp_gender from employee
where emp_gender = '0';

select emp_salary, avg(emp_age)
from employee
where emp_salary between 20000.00 and 30000.00
group by emp_salary;

---------chap 6 JOIN-----------------------------------------------

select emp_name, dpm_name from employee
join department on emp_dpm_id = dpm_id

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_name = 'Somsak';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_gender = '0';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_gender = '1';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_code = '46001';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_salary = '20000.00';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where dpm_name = 'Sales';

select emp_name, emp_age, emp_salary, dpm_name from employee 
join department on emp_dpm_id = dpm_id
where dpm_cd = 'D004';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where dpm_name like 'B%';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where dpm_name like '%e%';

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_age > 50;

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_salary >= 30000.00;

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_salary <= 20000.00 and emp_age >= 25;

select emp_name, emp_age, emp_salary, dpm_name from employee
join department on emp_dpm_id = dpm_id 
where emp_age <= 30 and dpm_name like 'P%';

select * from employee
join department on emp_dpm_id = dpm_id
order by dpm_name desc , emp_name asc;

select * ,dpm_cd, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_gender = '1'
order by dpm_name asc; 

select * ,dpm_cd, dpm_name from employee
join department on emp_dpm_id = dpm_id
where emp_gender = '0'
order by dpm_name desc;

select * from employee
join department on emp_dpm_id = dpm_id 
where dpm_name in ('Project Manager','System Analysis', 'Business Analysis');


select dpm_name, count(*) from employee 
join department on emp_dpm_id = dpm_id 
group by dpm_name;

select dpm_name, avg(emp_age) from employee 
join department on emp_dpm_id = dpm_id 
group by dpm_name;

select dpm_name, avg(emp_salary) from employee 
join department on emp_dpm_id = dpm_id 
group by dpm_name;

select dpm_name, max(emp_age) from employee
join department on emp_dpm_id = dpm_id 
group by dpm_name;

	
select e.emp_name, e.emp_age, e.emp_gender , e.emp_salary , d.dpm_name  
from employee e 
inner join department d 
on e.emp_dpm_id = d.dpm_id
inner join 
(select emp_dpm_id , max(emp_salary) as maxSalary      
	from employee 
	join department on emp_dpm_id = dpm_id
	group by emp_dpm_id) as subq
on e.emp_dpm_id = subq.emp_dpm_id              
and e.emp_salary = subq.maxSalary;	           

select emp_name, emp_age, emp_salary, dpm_cd, dpm_name 
from employee
inner join department 
on emp_dpm_id = dpm_id
where dpm_cd in ('D001','D003', 'D005')
order by dpm_cd desc;

select emp_name, emp_age, dpm_cd, dpm_name 
from employee
inner join department 
on emp_dpm_id = dpm_id
where emp_resign is not null;

--END--









--------------------------------------------------------------------------------------------------
--keep it for read only--
select * from employee 
join department on emp_dpm_id = dpm_id

select employee.* from employee 
join department on emp_dpm_id = dpm_id

select e.* from employee e    -- e is nickname for table -- 
join department on emp_dpm_id = dpm_id    --also e.* mean select all col from table e --


select e.emp_name, e.emp_age, e.emp_gender , e.emp_salary , d.dpm_name  --inner join 2 times--
from employee e 
inner join department d 
on e.emp_dpm_id = d.dpm_id
inner join 
(select emp_dpm_id , max(emp_salary) as maxSalary      --sub query that show max salary by select from id--
	from employee 
	join department on emp_dpm_id = dpm_id
	group by emp_dpm_id) as subq
on e.emp_dpm_id = subq.emp_dpm_id              --join id = id from sub q mai--
and e.emp_salary = subq.maxSalary			   --join salary = maxSalary from sub q mai--







