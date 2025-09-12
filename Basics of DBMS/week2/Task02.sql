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
(401,1,101),(402,2,103),(403,2,102),(404,3,103),
(405,3,104),(406,4,102),(407,5,105),(408,5,102);

--Assignment 01 Top N Books per User
--Joins
select *
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN books b ON o.product_id = b.product_id;
--apply row _number , rank, dense rank with partition -

SELECT
  u.user_id,
  b.price,
  ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS RowNum,
  RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS RankNum,
  DENSE_RANK() OVER (PARTITION BY u.user_id ORDER BY b.price DESC) AS DenseRankNum
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN books b ON o.product_id = b.product_id;

--Ranking Users by total spending--Assignment 2--

SELECT 
    u.user_id,
    u.name,
    SUM(b.price) AS TotalSpent,
    RANK() OVER (ORDER BY SUM(b.price) DESC) AS RankNum,
    DENSE_RANK() OVER (ORDER BY SUM(b.price) DESC) AS DenseRankNum
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN books b ON o.product_id = b.product_id
GROUP BY u.user_id, u.name;

select * from users
select * from books
select * from orders
