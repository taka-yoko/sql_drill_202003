-- ch_.sql

-- ex
select
  EmployeeName
from
  Employees
except
select
  e.EmployeeName
from
  Sales as s
    inner join
  Employees as e
    on s.EmployeeID = e.EmployeeID
;

-- Q1
select
  CustomerID as ID
, CustomerName as 名前
from
  Customers
except
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
order by
  ID
;

-- Q2
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
except
select
  EmployeeID as ID
, EmployeeName as 名前
from
  Employees
order by
  ID
;

-- Q3
select
  ProductID
from
  Products
except
select
  ProductID
from
  Sales
order by
  ProductID
;

-- Q4
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 1
    and
  s.Quantity >= 100
except
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 2
    and
  s.Quantity >= 10
order by
  ProductID
;

-- Q5
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 2
    and
  s.Quantity >= 10
except
select
  s.ProductID
from
  Sales as s
    inner join
  Customers as c
    on s.CustomerID = c.CustomerID
where
  c.CustomerClassID = 1
    and
  s.Quantity >= 100
order by
  ProductID
;
