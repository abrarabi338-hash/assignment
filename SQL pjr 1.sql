use project1;
create table employes(
EMP_ID int primary key,
EMP_Name varchar(100) not null,
Department varchar(50) not null,
salary decimal(10,2) check (salary > 0),
Joining_Date date not null,
);
select*from[dbo].[employes];

use DATA1;
select*from[dbo].['CAR DETAILS FROM CAR DEKHO$'];
select name,year,selling_price,fuel from [dbo].['CAR DETAILS FROM CAR DEKHO$']
select * from [dbo].['CAR DETAILS FROM CAR DEKHO$'] WHERE fuel = 'Diesel';
select * from [dbo].['CAR DETAILS FROM CAR DEKHO$'] where selling_price=60000;
select * from [dbo].['CAR DETAILS FROM CAR DEKHO$'] where owner='Second Owner';