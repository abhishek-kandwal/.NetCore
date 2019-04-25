-- Database selected here
use Movie_Booking_SQLDB;

-- Table is created here
create table Customer_Salary(Id int, Name varchar(20), Salary int)

-- inserted different values in the tables
insert into Customer_Salary Values (1,'abhishek' ,200000);
insert into Customer_Salary Values (2,'aviico' ,13000);
insert into Customer_Salary Values (3,'aviici' ,12330);
insert into Customer_Salary Values (4,'avii' ,142000);
insert into Customer_Salary Values (5,'aviisi' ,1420);

-- select query for the 2nd highest salary
SELECT TOP 1 Salary from( Select top 2 Salary from Customer_Salary order by Salary desc)As Result Order by Salary Asc;