-- ch3_1.sql

-- ex
select
  *
from
  Products
where
  ProductID not in
    (
      select
        ProductID
      from
        Sales
    )
;

-- Q1
select
  EmployeeID
, EmployeeName
from
  Employees
where
  EmployeeID in
    (
      select
        EmployeeID
      from
        Salary
      group BY
        EmployeeID
      having
        max(Amount) >= 300000
    )
;

-- Q2
select
  SaleID
, Quantity
, CustomerID
, (
  select
    CustomerName
  from
    Customers
  where
    Sales.CustomerID = Customers.CustomerID
) as "顧客名"
from
  Sales
where
  Quantity >= 100
;

-- Q3
select
  ProductID
, ProductName
from
  Products
where
  ProductID in
    (
      select
        ProductID
      from
        Sales
      group by ProductID
      having
        sum(Quantity) >= 100
    )
;

-- Q4
select
  EmployeeID
, EmployeeName
, (
    select
      max(Amount)
    from
      Salary
    group BY
      EmployeeID
    having
      Salary.EmployeeID = Employees.EmployeeID
) as "最高給与額"
from
  Employees
where
  EmployeeID in
    (
      select
        EmployeeID
      from
        Salary
      group BY
        EmployeeID
      having
        max(Amount) >= 300000
    )
;

-- Q5
select
  SaleID
, Quantity
, CustomerID
, (
  select
    CustomerName
  from
    Customers
  where
    Sales.CustomerID = Customers.CustomerID
) as "顧客名"
, (
  select
    ProductName
  from
    Products
  where
    Sales.ProductID = Products.ProductID
) as "商品名"
from
  Sales
where
  Quantity >= 100
;

