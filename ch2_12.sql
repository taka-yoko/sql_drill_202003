-- ch2_12.sql

-- ex
select
  PrefecturalID as "都道府県"
, count(*) as "顧客数"
from
  Customers
group BY
  PrefecturalID
having
  count(*) >= 3
;

-- Q1
select
  EmployeeID as "社員ID"
, count(*) as "支給回数"
from
  Salary
group by
  EmployeeID
having
  count(*) < 12
;

-- Q2
select
  PrefecturalID as "県ID"
, count(*) as "顧客数"
from
  Customers
group by
  PrefecturalID
having
  count(*) > 1
;

-- Q3
select
  ProductID as "商品ID"
, count(*) as "売上レコード数"
from
  Sales
group by
  ProductID
having
   10 <= count(*) and count(*) <= 50
;

-- Q4
select
  BloodType as "血液型"
, count(*) as "データ件数"
from
  Employees
group by
  BloodType
having
  count(*) >= 10
;

-- Q5
select
  ProductID as "商品ID"
, sum(Quantity) as "数量合計"
from
  Sales
group by
  ProductID
having
  100 <= sum(Quantity) and sum(Quantity) <= 200
;
