-- ch_.sql

-- ex
select
  CustomerName as "氏名"
from
  Customers
union all
select
  EmployeeName as "氏名"
from
  Employees
;

-- Q1
select
  DepartmentID as ID
, DepartmentName as 名前
from
  Departments
union all
select
  CategoryID as ID
, CategoryName as 名前
from
  Categories
;

-- Q2
select
  'Departments' as テーブル名
,  DepartmentID as ID
, DepartmentName as 名前
from
  Departments
union all
select
  'Categories' as テーブル名
, CategoryID as ID
, CategoryName as 名前
from
  Categories
order by
  テーブル名
, ID
;

-- Q3
select
  DepartmentID as ID
, DepartmentName as 名前
from
  Departments
union all
select
  CustomerClassID as ID
, CustomerClassName as 名前
from
  CustomerClasses
union all
select
  CategoryID as ID
, CategoryName as 名前
from
  Categories
union all
select
  PrefecturalID as ID
, PrefecturalName as 名前
from
  Prefecturals
;

-- Q4
select
  'Departments' as "テーブル名"
,  DepartmentID as ID
, DepartmentName as 名前
from
  Departments
union all
select
  'CustomerClasses' as "テーブル名"
, CustomerClassID as ID
, CustomerClassName as 名前
from
  CustomerClasses
union all
select
  'Categories' as "テーブル名"
, CategoryID as ID
, CategoryName as 名前
from
  Categories
union all
select
  'Prefecturals' as "テーブル名"
, PrefecturalID as ID
, PrefecturalName as 名前
from
  Prefecturals
order by
  "テーブル名"
, ID
;

-- Q5
select
  s.SaleID
, s.ProductID
, s.Quantity
, c.CustomerClassID
, c.CustomerName
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 2
    and
  s.Quantity >= 10
union all
select
  s.SaleID
, s.ProductID
, s.Quantity
, c.CustomerClassID
, c.CustomerName
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 1
    and
  s.Quantity >= 100
;

