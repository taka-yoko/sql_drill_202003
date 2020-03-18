-- ex
select
  count(*) as "子のつく社員の人数"
from
  Employees
where
  EmployeeName like '%子'
;

-- Q1
select
  CustomerName as "会社名"
from
  Customers
where
  CustomerName like '%株式会社%'
;

-- Q2
select
  AVG(Height) as "平均身長"
from
  Employees
where
  EmployeeName like '%ー%'
;

-- Q3
select
  count(*) as "顧客数"
from
  Customers
where
  CustomerName not like '%株式会社%'
;

-- Q4
select
  EmployeeName
, Height
from
  Employees
where
  EmployeeName like '%リ%'
  and
  Height <= 160
;

-- Q5
select
  *
from
  Customers
where
  CustomerName not like '%株式会社%'
  and
  Address like '%江戸川区%'
;
