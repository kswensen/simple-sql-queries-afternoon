--Table - People

-- Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
CREATE TABLE Person (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
  	Name NVARCHAR(40),
  	Age INTEGER,
  	Height FLOAT,
  	City NVARCHAR(40),
  	FavoriteColor NVARCHAR(20)
);

--Add 5 different people into the Person database.

INSERT INTO Person
(Name, Age, Height, City, FavoriteColor)
VALUES
('Samantha', 21, 150, 'Midvale', 'Green');

--List all the people in the Person table by Height from tallest to shortest.

SELECT *
FROM Person
ORDER BY Height DESC;

--List all the people in the Person table by Height from shortest to tallest.

SELECT *
FROM Person
ORDER BY Height ASC;

--List all the people in the Person table by Age from oldest to youngest.

SELECT *
FROM Person
ORDER BY Age DESC;

--List all the people in the Person table older than age 20.

SELECT *
FROM Person
WHERE Age > 20;

--List all the people in the Person table that are exactly 18.

SELECT *
FROM Person
WHERE Age = 20;

--List all the people in the Person table that are less than 20 and older than 30.

SELECT *
FROM Person
WHERE Age < 20 OR Age > 30;

--List all the people in the Person table that are not 27 (Use not equals).

SELECT *
FROM Person
WHERE Age IS NOT 27;

--List all the people in the Person table where their favorite color is not red.

SELECT *
FROM Person
WHERE FavoriteColor IS NOT 'Red';

--List all the people in the Person table where their favorite color is not red or blue.

SELECT *
FROM Person
WHERE FavoriteColor IS NOT 'Red' AND FavoriteColor IS NOT 'Blue';

--List all the people in the Person table where their favorite color is orange or green.

SELECT *
FROM Person
WHERE FavoriteColor IN('Green', 'Orange');

--List all the people in the Person table where their favorite color is orange, green or blue (use IN).

SELECT *
FROM Person
WHERE FavoriteColor IN('Green', 'Orange','Blue');

--List all the people in the Person table where their favorite color is yellow or purple (use IN).

SELECT *
FROM Person
WHERE FavoriteColor IN('Yellow', 'Purple');

--Table - Order

--Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity

CREATE TABLE Orders(
	PersonID INTEGER PRIMARY KEY AUTOINCREMENT,
  	ProductName NVARCHAR(40),
  	ProductPrice FLOAT,
  	Quantity INTEGER
);

--Add 5 Orders to Order table.

INSERT INTO Orders
(PersonID, ProductName, ProductPrice, Quantity)
VALUES
(0, 'Ham', 4, 2);

--Select all the records from the Order table.

SELECT *
FROM Orders;

--Calculate the total number of products ordered.

SELECT sum(Quantity)
FROM Orders;

--Calculate the total order price.

SELECT sum(ProductPrice)
FROM Orders;

--Calculate the total order price by a single PersonID.

SELECT sum(ProductPrice)
FROM Orders
WHERE PersonID = 0;

--Table - Artists

--Add 3 new Artists to the Artist table. ( It's already created )

INSERT INTO Artist
(Name)
VALUES
('Pink Floyd');

--Select 10 artists in reverse alphabetical order.

SELECT *
FROM Artist
ORDER BY Name DESC
LIMIT 10;

--Select 5 artists in alphabetical order.

SELECT *
FROM Artist
ORDER BY Name ASC
LIMIT 5;

--Select all artists that start with the word "Black".

SELECT *
FROM Artist
WHERE Name LIKE 'Black%';

--Select all artists that contain the word "Black".

SELECT *
FROM Artist
WHERE Name LIKE '%Black%';

--Table - Employee

--List all Employee first and last names only that live in Calgary.

SELECT FirstName, LastName
FROM Employee
WHERE City = 'Calgary';

--Find the first and last name and birthdate for the youngest employee.

SELECT FirstName, LastName, MIN(BirthDate)
FROM Employee;

--Find the first and last name and birthdate for the oldest employee.

SELECT FirstName, LastName, MAX(BirthDate)
FROM Employee;

--Find everyone that reports to Nancy Edwards (Use the ReportsTo column).

SELECT *
FROM Employee
WHERE ReportsTo = 2;

--Count how many people live in Lethbridge.

SELECT count(*)
FROM Employee
WHERE City = 'Lethbridge';

--Table - Invoice

--Count how many orders were made from the USA.

SELECT count(*)
FROM Invoice
WHERE BillingCountry = 'USA';

--Find the largest order total amount.

SELECT max(Total)
FROM Invoice;

--Find the smallest order total amount.

SELECT min(Total)
FROM Invoice;

--Find all orders bigger than $5.

SELECT *
FROM Invoice
WHERE Total > 5;

--Count how many orders were smaller than $5.

SELECT count(*)
FROM Invoice
WHERE Total < 5;

--Count how many orders were in CA, TX, or AZ (use IN).

SELECT count(*)
FROM Invoice
WHERE BillingState in('CA', 'TX', 'AZ');

--Get the average total of the orders.

SELECT AVG(Total)
FROM Invoice;

--Get the total sum of the orders.

SELECT sum(Total)
FROM Invoice;
