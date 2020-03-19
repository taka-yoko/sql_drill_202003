-- ch2_11.sql

-- ex
select
  PrefecturalID as "都道府県"
, count(*) as "顧客数"
from
  Customers
group by
  PrefecturalID
;

-- Q1
select
  CustomerID as "顧客ID"
, count(*) as "件数"
from
  Sales
group by
  CustomerID
;

-- Q2
select
  EmployeeID as "社員ID"
, sum(Amount) as "合計"
from
  Salary
group by
  EmployeeID
;

-- Q3
select
  CustomerID as "顧客ID"
, ProductID as "商品ID"
, sum(Quantity) as "数量"
from
  Sales
group by
  CustomerID
, ProductID
;

-- Q4
select
  BloodType as "血液型"
, avg(Height) as "平均身長"
, avg(Weight) as "平均体重"
from
  Employees
group by
  BloodType
;

-- Q5
select
  EmployeeID as "社員ID"
, count(*) as "支給回数"
, avg(Amount) as "平均支給額"
from
  Salary
group by
  EmployeeID
;
