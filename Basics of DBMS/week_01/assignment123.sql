--Task 01--
-- Database Table for smart meter reading--
create database smart_meter;

use smart_meter;
--coustomer deatil table--
create table customers (customerId int ,  Name varchar(30), Address varchar(50), Region varchar (10));
insert into customers values (  123, 'Bunty', 'Bihar', 'North'),(234, 'Gopal', 'Gujrat','East')
,(456, 'REETU','Banglore','South'),(678,'Nikhil','Bengal','West'),(890,'Nayan','MP','North')
select * from customers
--Data of smart meter of coustomer--
create table SmartMeterReadings (MeterId int, customerId int ,Locations varchar(20),
InstalledDate date, ReadingDatetime datetime, Energy_Consumed float);
insert into SmartMeterReadings values (256, 123, 'Rooftop', '2022-03-07', '2025-07-5 10:00:00', 25.5 ),
(457,234,'Rooftop', '2023-05-05', '2024-06-12 11:15:00', 15.2),(605,456,'Basement', '2023-03-05', '2024-04-12 13:15:00', 45.2),
(307,678,'Rooftop',' 2023-10-15', '2025-08-17 16:20:00', 35.6),(706,890,'Basement', '2023-10-15', '2024-08-27 15:05:00', 35.8)

truncate table  SmartMeterReadings
select * from customers

select * from SmartMeterReadings

--Task 2--
select * from SmartMeterReadings where Energy_Consumed between 10 and 50 and 
ReadingDatetime between '2024-01-01' and '2024-12-31'
select customerId, avg(Energy_Consumed) as average_energy ,MAX(Energy_Consumed) as max_energy from SmartMeterReadings where ReadingDatetime > '2024-01-01' group by customerId

