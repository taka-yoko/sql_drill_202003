-- ex
select
  Weight / (Height / 100) / (Height / 100) as BMI
from
  Employees
;

-- Q1
select
  (Height * 3) - (Weight * 2.5) as 結果
from
  Employees
;

-- Q2
select
  (HireFiscalYear / Weight) + Height as 結果
from
  Employees
;

-- Q3
select
  Quantity + (CustomerID * ProductID * EmployeeID) as 結果
from
  Sales
;

-- Q4
select
  Price - (ProductCode * CategoryID) as 結果
from
  Products
;

-- Q5
select
  CustomerID + (CustomerClassID * CustomerClassID * CustomerClassID) as 結果
from
  Customers
;
