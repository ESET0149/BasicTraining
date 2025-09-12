CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

--Task 01
--unique only--
select Name from Students2024 union
select Name from Students2025

--including duplicates--
select Name from Students2024 union all
select Name from Students2025

CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');


--Task 2-- upper case and lower case--
select upper(Name) from Employees
select lower(Name) from Employees

--length of employees name--
select len(Name) from Employees

--show only first three letters of each name--

select SUBSTRING(Name,1,3) from Employees

--replace finance department with accounts--
select REPLACE(Department,'Finance','Accounts') from Employees

--new column showing name department using concat--
select CONCAT('Name','-','department') as Names-Department


CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');

--TASK 3--
--SHOW TODAY DATE--
SELECT GETDATE() as todaysdate

--FIND DURATION OF PROJECT--

SELECT DATEDIFF(day, StartDate, EndDate) from Projects;

-- ADD 10 DAYS TO EACH PROJECT--
select DATEADD (day, 10, EndDate) FROM Projects;

--how many days are left until each project ends.--

SELECT  ProjectID,Name,StartDate,EndDate,
    DATEDIFF(day, GETDATE(), EndDate) AS DaysLeft
FROM 
 Projects;

 --Task 4--
 --Convert today’s date into DD/MM/YYYY format using CONVERT--
SELECT CONVERT(varchar, GETDATE(), 103) AS FormattedDate; 

--Convert a float 123.456 into an integer using CAST.
SELECT CAST(123.456 AS int) AS IntegerValue;

--For employees (from Employees table above), categorize them--

select EmpID ,Name, Department,
 CASE 
 WHEN Department = 'IT' THEN 'Tech Team'
 WHEN Department = 'HR' THEN 'Human Resources'
 ELSE 'Other'
 END AS Department_Category
FROM 
    Employees;

