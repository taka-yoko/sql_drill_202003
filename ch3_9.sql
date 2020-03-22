-- ch3_9.sql

-- ex
select
  e.EmployeeName as "氏名"
, s.SaleDate as "日付"
from
  Sales as s
    inner join
  Employees as e
    on s.EmployeeID = e.EmployeeID
intersect
select
  e.EmployeeName as "氏名"
, s.PayDate as "日付"
from
  Salary as s
    inner join
  Employees as e
    on s.EmployeeID = e.EmployeeID
;

-- Q1
select
  CustomerID as ID
, CustomerName as 名前
from
  Customers
intersect
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
order by
  ID
;

-- Q2
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
intersect
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
order by
  ID
;

-- Q3
select
  ProductID
from
  Products
intersect
select
  ProductID
from
  Sales
order by
  ProductID
;

-- Q4
select
  CustomerID
,  ProductID
from
  Sales
where
  SaleDate between '2006-10-01' and '2006-12-31'
  and Quantity >= 10
intersect
select
  CustomerID
,  ProductID
from
  Sales
where
  SaleDate between '2007-01-01' and '2007-03-31'
  and Quantity >= 10
intersect
select
  CustomerID
,  ProductID
from
  Sales
where
  SaleDate between '2007-04-01' and '2007-06-30'
  and Quantity >= 10
order by
  CustomerID
, ProductID
;

-- Q5
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 2
    and
  s.Quantity >= 10
intersect
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 1
    and
  s.Quantity >= 100
order by
  ProductID
;

