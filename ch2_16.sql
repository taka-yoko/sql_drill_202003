-- ch2_16.sql

-- ex
select distinct
  Address as "住所"
from
  Customers
;

-- Q1
select distinct
  HireFiscalYear
from
  Employees
;

-- Q2
select distinct
  CustomerID
, ProductID
from
  Sales
;

-- Q3
select distinct
  CustomerClassID
, PrefecturalID
from
  Customers
;

-- Q4
select distinct
  CustomerID
, ProductID
, EmployeeID
from
  Sales
order by
  CustomerID, ProductID
;

-- Q5
select distinct
  Price
, CategoryID
from
  Products
;


