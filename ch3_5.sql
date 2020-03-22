-- ch_.sql

-- ex
select
  p1.ProductName as "商品名1"
, p2.ProductName as "商品名2"
, ( p1.Price + p2.Price ) as "セット価格"
from
  Products as p1
    inner join
  Products as p2
    on p1.ProductID < p2.ProductID
    and p1.CategoryID <> p2.CategoryID
where
  ( p1.Price + p2.Price ) > 2500
;

-- Q1
select
  p1.ProductName as "商品名1"
, p2.ProductName as "商品名2"
from
  Products as p1
    inner join
  Products as p2
    on p1.ProductID < p2.ProductID
    and p1.CategoryID = p2.CategoryID
;

-- Q2
select
  c1.CustomerName as "顧客名1"
, c2.CustomerName as "顧客名2"
from
  Customers as c1
    inner join
  Customers as c2
    on c1.CustomerID < c2.CustomerID
    and c1.PrefecturalID = c2.PrefecturalID
    and c1.CustomerClassID = c2.CustomerClassID
;

-- Q3

-- この場合は組み合わせではなく順列
-- なので e1.Birthday < e2.Birthdayは不要
select
  e1.EmployeeName as "従業員名1"
, e2.EmployeeName as "従業員名2"
from
  Employees as e1
    inner join
  Employees as e2
    on e1.Birthday > e2.Birthday
;

-- Q4
select
  c1.CategoryName as "カテゴリ名1"
, c2.CategoryName as "カテゴリ名2"
from
  Categories as c1
    inner join
  Categories as c2
    on c1.CategoryID < c2.CategoryID
;

-- Q5
select
  c1.CustomerName as "顧客名1"
, c2.CustomerName as "顧客名2"
from
  Customers as c1
    inner join
  Customers as c2
    on c1.CustomerID < c2.CustomerID
    and c1.PrefecturalID = c2.PrefecturalID
    and c1.CustomerClassID = c2.CustomerClassID
    and c1.PrefecturalID <> 13
;
