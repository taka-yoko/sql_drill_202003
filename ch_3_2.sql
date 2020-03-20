-- ch_.sql

-- ex
select
  Customers.PrefecturalID
, Prefecturals.PrefecturalName as "都道府県名"
, count(*) as "顧客数"
from
  Customers
    inner join
  Prefecturals
    on Customers.PrefecturalID = Prefecturals.PrefecturalID
group by
  Customers.PrefecturalID
, Prefecturals.PrefecturalName
;

-- Q1
select
  e.EmployeeName
, s.PayDate
, s.Amount
from
  Salary as s
    inner join
  Employees as e
    on s.EmployeeID = e.EmployeeID
order by
  e.EmployeeID
;

-- Q2
select
  s.Quantity
, c.CustomerName
, p.ProductName
, e.EmployeeName
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
      inner join
    Employees as e
      on s.EmployeeID = e.EmployeeID
        inner join
      Products as p
        on s.ProductID = p.ProductID
where
  s.Quantity >= 200
;

-- Q3
select
  p.ProductID
, p.ProductName
, sum(Quantity)  as "数量合計"
from
  Sales as s
    inner join
  Products as p
    on s.ProductID = p.ProductID
group by
  p.ProductID
, p.ProductName
having
  sum(s.Quantity) >= 300
;

-- Q4
select
  s.Quantity
, (
    select
      c.CustomerName
    from
      Customers as c
    where
      c.CustomerID = s.CustomerID
  ) as CustomerName
, (
    select
      p.ProductName
    from
      Products as p
    where
      p.ProductId = s.ProductID
  ) as ProductName
, (
    select
      e.EmployeeName
    from
      Employees as e
    where
      e.EmployeeID = s.EmployeeId
  ) as EmployeeName
from
  Sales as s
where
  s.Quantity >= 200
;

-- Q5
select
  c.CustomerName
, p.PrefecturalName
, cc.CustomerClassName
from
  Customers as c
, Prefecturals as p
, CustomerClasses as cc
where
  c.PrefecturalID = p.PrefecturalID
   and
  c.CustomerClassID = cc.CustomerClassID
order by
  p.PrefecturalID
;


