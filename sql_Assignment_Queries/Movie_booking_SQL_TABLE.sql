--Here the Database is selected
use Movie_Booking_SQLDB

--Here the customer table is created
CREATE TABLE CUSTOMERS_TABLE(
   Customer_ID   INT  IDENTITY  NOT NULL,
   Customer_NAME VARCHAR (30)     NOT NULL,
   Customer_AGE  INT              NOT NULL,
   PRIMARY KEY (Customer_ID),
) 

--Here the insert query for the customer table
insert into CUSTOMERS_TABLE values('AVII',23)
insert into CUSTOMERS_TABLE values('AVIIci',24)

--Here executing the stored procedure DEFINATION IS IN ANOTHER FILE
EXEC All_CUSTOMERS;

--Here the customer table is created
CREATE TABLE MOVIE_TABLE(
   Movie_ID   INT  IDENTITY  NOT NULL,
   Movie_NAME VARCHAR (30)     NOT NULL,
   Movie_GENRE VARCHAR (10)     NOT NULL,
   PRIMARY KEY (Movie_ID),
)
 
 --Here the insert query for the MOVIE_TABLE table
insert into MOVIE_TABLE values('PRIRATE_OF_THE_SEA')

-- SELECTING EVERYTHING FORM THE MOVIE TABLE
select * from MOVIE_TABLE

--Here the customer table is created
CREATE TABLE BOOKING_TABLE(
	Booking_ID INT IDENTITY,
	Movie_ID INT,
	Movie_Name VARCHAR(20)  NOT NULL,
	PRIMARY KEY (Booking_ID),
	Foreign key (Movie_ID) REFERENCES MOVIE_TABLE(Movie_ID)
);

-- SELECTING EVERYTHING FORM THE MOVIE TABLE
select * from  MOVIE_TABLE

-- ALTERING THE BOOKING TABLE
Alter table booking

-- ADDING THE FOREIGN KEY TO THE MOVIE_ID 
add foreign key (Movie_ID) references customers(ID)




