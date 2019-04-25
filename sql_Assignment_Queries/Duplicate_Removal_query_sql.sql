-- database selected
use Movie_Booking_SQLDB;

-- creating the table here
create table USER_TABLE(Id int, Name varchar(20) , age int)

-- inserting the data in the database
Insert into USER_TABLE Values(1, 'abhishek kandwal' , 23);
Insert into USER_TABLE Values(2, 'amit page' , 20);
Insert into USER_TABLE Values(3, 'amit kumar' , 2);
Insert into USER_TABLE Values(4, 'amit tripati', 12);
Insert into USER_TABLE Values(5, 'abhishek kandwal', 11);

-- delete query for the duplicate
DELETE from USER_TABLE where Name in(select Name from USER_TABLE group by Name having  count(*) >1);

-- selecting all the data from the table
select * from USER_TABLE;
