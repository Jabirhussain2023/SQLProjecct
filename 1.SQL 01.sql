use Jabir

select *from EMP_Sal

select count(*) from EMP_Sal

----if you focus on the syntax, can we say that it is just an enlgish phrase?

--- Creating a database


Create Database Jabir --- consider that you have created a structure---

---How to enter in a particular Datbase

Use Jabir

---if you focus on the case of syntax --- I use Caps while creating and while using the small case- so SQL is not
-- a case sensitive language , not even the particular indentation required

--- for execution of a query you need to select the query and press ctrl+E for MSSQL, Ctrl+Enter key for MYSQL/ you can directly navigate to the !Execute tab above the query editor(MSSQL), run icon above the QE
--- Commenting in SQL- Single line comment (use double dash (--), multiple line comments you can use /*....*/
/* This is My Sql
class*/

-- DDL- Data Definition Language-- to understand and remember this thing easily just remember that this is a part of Structural changes
--- Create, Alter(Modification of structure) & Drop

-- create a table--

create table test_emp(Id int, name char(1))

select *from test_emp
--- it has two column structure-- ID, Name

-- We need to create another structure-- whihch means we require modification

Alter Table Test_emp
add age int

-- after the modiification we have one more column
select *from test_emp
-- Dropping a structure--

Alter Table Test_emp
Drop column age

--- DML- Data Manipulation Language (which has Insert, Update, Delete)

---insert records/values in a table

insert into test_emp
values(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F')

Select *from test_emp

-- In a scenario, F is leaving that house, and G is going to stay in that house

-- here we use update to change the values or records in tha table

update test_emp set name='G'
where name='F'

-- In the another scenario , on person (A) leaves that house 

-- here we'll use Delete command/statement

delete from test_emp  /* this statement will delete the whole records from the given table*/
where name='A'  /* if we want to delete one record or conditional record we use where clause with this statement*/

select *from test_emp

--- Consider a duplicacy in a table records, when you have all values in the similar row are same

--DQL- Data Query Language-- Select statement is the part of DQL--

SELECT *   /* whenever you are writing select in the query editor , that means you are fetching information from database with or without condition/s*/
FROM test_emp
 -- this above statement is fetching all records from a table .. (*) means All records

 -- with the condition-

 select *from test_emp  /* conditional records*/
 where id=5

 -- DCL- Data Control Language-- Grant, Revoke this can be a part of administrator where it can grant the access or Revoke the access

 use Jabir

 --- Create something in SQL- we use create statement

 create table Operation
 (EID char(5), Name varchar(30), City varchar(30), Phone varchar(20), DOb date)

 -- Insert records into a table--

 Select *from Operation
 insert into Operation  
 values('E0001','Sagar Thapliyal','Bengaluru','8795461664', '1989-07-26')

 --- inserting multiple records with one insert statement

  INSERT INTO Operation  /* just adding one set of records seperated by a comma*/
  VALUES ('E0002', 'Sagar Thapliyal', 'Bengaluru', '8795461664', '1989-07-25'),
('E0003', 'Ashish Som', 'Bengaluru', '8795461664', '1990-07-20'),
('E0004', 'mayank Ghai', 'Bengaluru', '8765461664', '2000-06-21'),
('E0005', 'Ritika Chavan', 'Bengaluru', '9795461664', '1988-05-16'),
('E0006', 'Mukesh sati', 'Bengaluru', '87901061664', '1989-01-06')

--- Fetch the all output from a table

select *from Emp

---fetch few columns from a table

select EID, Name, City from Emp

use Jabir

select *from EMP
--What if I need only Delhi employees details

--- Claused in SQL-- Where Clause is used for conditional filteration of data while querying

select * from EMP
where City='Delhi'  /* here I am using where clause to filter the delhi data*/

--- Like Clause-- will match the pattern in the text/string of a column, works with wildcard operators like., %,_ and []

--- Suppose I want to check the names strated with 'A' letter
--- Like with % wilcard will match the characters
select *from EMP
where Name like 'A%'  /* % after the character or word will match the occurence of that character and % will denote any char/words after that*/

-- What if I want to check all the emp last name having Sharma

Select *from EMP
where Name like '%Sharma' /* if you want to match the character at the end position so change its position*/

--- I want to check those email where domain is yahoo

select *from emp
where email like '%yahoo%' /* this will match the phrase in the middle of the string*/

--- Underscore wildcard-- (_) which denotes the place of that character (one underscore one char)

--- I want to display the second char should be 'A' in the Names

Select *from EMP
where Name like '__A%'  

--

Select *from emp
where Name like '_A_A%'

--- What if you want to check the Name between A-G

Select *from emp
where Name Like '[A-G]%'  /* this quare bracket will find the match with the range*/

-- What if you want to particular characters/ words

select *from emp
where Name like '[AG]%'  /* when we need to find the particular char/words provide inside the bracket*/

-- What if I need do not print the names starts with A&G, will use a '^' carot operator

SELECT *FROM emp
WHERE Name LIKE '[^AG]%'

-- Top clause-- Df.head()- by default gives first 5 rows as a storage order

Select top 5 *from emp
								/* top clause can works with sorting clause as well */
-- Arrange  the output of five top records as per the name Alphabetically (Asc)
Select *from emp
order by name 







