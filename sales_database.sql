create database sales_db;
use sales_db;
create table sales_data (
Order_ID int,
Order_Date date,
Month varchar(10),
Region varchar(30),
Category varchar(30),
Product varchar(30),
Sales int,
Quantity int,
Profit int
);
insert into sales_data values
(1001,'2023-01-05','Jan','North','Technology','Laptop',55000,2,8000),
(1002,'2023-01-07','Jan','South','Furniture','Chair',12000,4,2500),
(1003,'2023-01-10','Jan','East','Office Supplies','Pen',2000,20,500);

-- Region-wise sales --
select Region, sum(sales) as Total_sales from sales_data group by Region;

-- Category-wise Profits --
select Category, sum(Profit) as Total_Profit from sales_data group by Category;

-- Top 5 Product by Sales --
select Product, sum(sales) as Total_Sales from sales_data group by Product order by Total_Sales desc limit 5;

-- month-wise sales trends --
select Month, sum(sales) as Monthly_Sales from sales_data group by Month;




