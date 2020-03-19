-- ch_2_13.sql

-- ex
select
  PrefecturalID as "都道府県"
, count(*) as "顧客数"
from
  Customers
where
  CustomerClassID = 1
group by
  PrefecturalID
having
  count(*) >= 2
;

-- Q1
select
  PrefecturalID as "県ID"
, count(*) as "顧客数"
from
  Customers
where
  PrefecturalID >= 10
group by
  PrefecturalID
having
  count(*) > 1
;

-- Q2
select
  EmployeeID as "社員ID"
, count(*) as "支給回数"
from
  Salary
where
  EmployeeID >= 20
group by
  EmployeeID
having
  count(*) >= 12
;

-- Q3
select
  ProductID as "商品ID"
, count(*) as "売上レコード数"
from
  Sales
where
  20 <= ProductID and ProductID <= 30
group by ProductID
having
  count(*) >= 30
;

-- Q4
select
  BloodType as "血液型"
, count(*) as "データ件数"
from
  Employees
where
  Height >= 165
group by
  BloodType
having
  count(*) >= 5
;

-- Q5
select
  ProductID as "商品ID"
, sum(Quantity) as "数量合計"
from
  Sales
where
  SaleDate >= '2007-06-01'
group by
  ProductID
having
  sum(Quantity) >= 200
;
