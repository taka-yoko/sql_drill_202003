-- ch3_3.sql

-- ex
select
  d.DepartmentName as "部門名"
, avg(s.Amount) as "部門別平均給与額"
from
  Salary as s
    inner join
  BelongTo as b
    on s.EmployeeID = b.EmployeeID
      inner join
    Departments as d
      on b.DepartmentID = d.DepartmentID
group by
  d.DepartmentName
;

-- Q1
select
  cg.CategoryID
, cg.CategoryName as "カテゴリ名"
, sum(s.Quantity) as "数量合計"
from
  Sales as s
    inner join
  Products as p
    on s.ProductID = p.ProductID
      inner join
    Categories as cg
      on p.CategoryID = cg.CategoryID
group by
  cg.CategoryID
, cg.CategoryName
;

-- Q2
select
  sum(s.Quantity) as "合計数量"
, p.PrefecturalID
, p.PrefecturalName as "県名"
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerId = c.CustomerID
      inner join
    Prefecturals as p
      on c.PrefecturalID = p.PrefecturalID
group by
  p.PrefecturalID
, p.PrefecturalName
;

-- Q3
select
  max(s.Quantity) as "最大数量"
, cc.CustomerClassID
, cc.CustomerClassName as "顧客クラス名"
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
      inner join
    CustomerClasses as cc
      on c.CustomerClassID = cc.CustomerClassID
group by
  cc.CustomerClassID
, cc.CustomerClassName
;

-- Q4
select
  sum(s.Quantity) as "合計数量"
, p.PrefecturalID
, p.PrefecturalName as "県名"
from
  Sales as s
, Customers as c
, Prefecturals as p
where
  s.CustomerID = c.CustomerID
    and
  c.PrefecturalID = p.PrefecturalID
group by
  p.PrefecturalID
, P.PrefecturalName
;

-- Q5
select
  max(Quantity) as "最大数量"
, cc.CustomerClassID
, cc.CustomerClassName as "顧客クラス名"
from
  Sales as s
, Customers as c
, CustomerClasses as cc
where
  s.CustomerID = c.CustomerID
    and
  c.CustomerClassID = cc.CustomerClassID
group by
  cc.CustomerClassID
, cc.CustomerClassName
;

