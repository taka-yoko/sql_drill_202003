-- ex
select
  EmployeeName as "氏名"
from
  Employees
where
  Height >= 180
;

-- Q1
select
  ProductName
from
  Products
where
  Price >= 2500
;

-- Q2
select
  EmployeeName
, Weight
from
  Employees
where
  Weight >= 70
;

-- Q3
select
  EmployeeName
, Height
from
  Employees
where
  Height between 160 and 180
;

-- Q4
select
  SaleID
from
  Sales
where
  SaleDate >= '2007-06-01'
;

-- Q5
select
  EmployeeName
, Height
, Weight
from
  Employees
where
  Height >= 170
  and
  Weight >= 60
;
