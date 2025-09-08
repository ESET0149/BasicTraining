--table created to perform a task--
use emp05
create table users(user_id int primary key , email varchar(30), name varchar(50))

insert into users values(1,'callmebhai@gmail.com','gopalbhai'),(2,'toxicmajhi@gmail.com','manjit'),(3,'kalajadu@gmail.com','soumya deep')
,(4,'vimalpanmashala@gmail.com','jai sai'),(5,'ghostlaugh@gmail.com','Namita')

create table books(product_id int primary key , title varchar(20), price float(50));

insert into books values
(101, 'MSSQL', 100),(
102, 'Half Girlfriend',699),
(103,'Blackmagic',700),
(104, 'marfa',2000),
(105,'How to laugh',2001.99)


create table orders(order_no int ,user_id int ,product_id int, Foreign key(user_id) References users(user_id),Foreign key(product_id) References books(product_id));

insert into orders values
(401,1,101),(402,2,103),(403,2,102),(404,3,103),(405,3,104),(406,4,102),(407,5,105),(408,5,102);
--task 1-- to inner join
select * 
from users U 
inner join orders O on U.user_id=O.user_id
inner join books B on O.product_id=B.product_id
--task 2-- find the coustomer who buys the book blackmagic
select * 
from users U 
inner join orders O on U.user_id=O.user_id
inner join books B on O.product_id=B.product_id
where B.title='Blackmagic'
--task 3-- what is the maximum price of the books 
select * 
from users U 
inner join orders O on U.user_id=O.user_id
inner join books B on O.product_id=B.product_id
where price =(select max(price) from books)


/-- 
select * from users
select * from books
select * from orders


drop table users;

Alter table users
alter column email varchar(30);