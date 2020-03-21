-- ch3_4.sql

-- ex
select
  p.ProductName
, avg(
    p.Price *
    case
      when s.Quantity is null then 0
      else s.Quantity
    end
  ) as "平均販売価格"
from
  Products as p
    left outer join
  Sales as s
    on p.ProductID = s.ProductID
group by
  p.ProductName
;

-- Q1
select
  c.CustomerName
, sum(
    case
      when s.Quantity is null then 0
      else s.Quantity
    end
  ) as "販売数量合計"
from
  Customers as c
    left outer join
  Sales as s
    on c.CustomerId = s.CustomerID
group by
  c.CustomerID
;

-- Q2
select
  e.EmployeeID
, max(e.EmployeeName) as "社員名"
, sum(
    case
      when s.SaleID is null then 0
      else 1
    end
  ) as "販売件数"
from
  Employees as e
    left outer join
  Sales as s
    on e.EmployeeID = s.EmployeeID
group by
  e.EmployeeID
;

-- Q3
select
  max(p.PrefecturalName) as PrefecturalName
, sum(
    case
      when c.CustomerID is null then 0
      else 1
    end
  ) as "顧客数"
from
  Prefecturals as p
    left outer join
  Customers as c
    on p.PrefecturalID = c.PrefecturalID
group by
  p.PrefecturalID
;

-- Q4
select
  e.EmployeeID
, sum(
    case
      when s.SaleID is null then 0
      else 1
    end
) as "販売件数"
from
  Employees as e
    left outer join
  Sales as s
    on e.EmployeeID = s.EmployeeID
group by
  e.EmployeeID
;

-- Q5
select
  e.EmployeeName
, case
    when s.Amount is null then 0
    else s.Amount
  end as "支給額"
from
  Employees as e
    left outer join
  Salary as s
    on e.EmployeeID = s.EmployeeID
      and s.PayDate = '2007-02-25'
;

