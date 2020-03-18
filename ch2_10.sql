-- ex
select
  ProductName as "商品名"
, Price as 価格
, case
    when Price < 1000 then 'C'
    when Price < 2000 then 'B'
    else 'A'
  end as "ランク"
from
  Products
;

-- Q1
select
  EmployeeName as "社員名"
, case
    when Height < 160 then 'A'
    when Height < 170 then 'B'
    when Height < 180 then 'C'
    else 'D'
  end as "ランク"
from
  Employees
;

-- Q2
select
  SalaryID as "給与ID"
, case
    when Amount < 150000 then 'D'
    when Amount < 300000 then 'C'
    when Amount < 500000 then 'B'
    else 'A'
  end as "ランク"
from
  Salary
;

-- Q3
select
  EmployeeName as "社員名"
, case
    when Weight < 60 then 'A'
    when Weight < 70 then 'B'
    when Weight < 80 then 'C'
    else 'D'
  end as "ランク"
from
  Employees
;

-- Q4
select
  SaleID as "販売ID"
, case
    when Quantity >= 10 then 'A'
    else 'B'
  end as "ランク"
from
  Sales
;

-- Q5
select
  EmployeeName as "社員名"
, Height as "身長"
, case
    when Height < 160 then 'A'
    when Height < 170 then 'B'
    when Height < 180 then 'C'
    else 'D'
  end as "ランク"
from
  Employees
;
