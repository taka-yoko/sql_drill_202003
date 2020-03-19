-- ch2_15.sql

-- ex
select
  ProductName
from
  Products
order by
  Price
;

-- Q1
select
  EmployeeID
, EmployeeName
, Birthday
from
  Employees
order by
  Birthday
;

-- Q2
select
  SaleID
, Quantity
, CustomerID
, ProductID
, SaleDate
from
  Sales
order by
  CustomerID, ProductID asc
, SaleDate desc
;

-- Q3
select
  CategoryID
, count(*) as "商品数"
from
  Products
where
  Price <= 1000
group by
  CategoryID
having
  count(*) < 5
order by
  CategoryID
;

-- Q4
select
  EmployeeID as "社員ID"
, sum(Amount) as "給与合計"
from
  Salary
group by
  EmployeeID
order by
  sum(Amount) desc
;

-- Q5
select
  DepartmentID as "部署ID"
, count(*) as "レコード数"
from
  BelongTo
where
  EndDate is null
group by
  DepartmentID
order by
  count(*) desc
;
