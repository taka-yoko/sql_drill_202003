-- ex
select
  ProductName as 商品名
, Price as 単価
from
  Products
;

-- Q1
select
  EmployeeName as 社員名
from
  Employees
;

-- Q2
select
  CustomerCode as 顧客コード
, CustomerName as 顧客名
from
  Customers
;

-- Q3
select
  ProductCode as 商品コード
, ProductName as 商品名
, Price as 価格
from
  Products
;

-- Q4
select
  CustomerName as 顧客名
, CustomerName as 得意先名
from
  Customers
;

-- Q5
select
  EmployeeName as 社員名
, EMail as メールアドレス
, EMail as 連絡先
from
  Employees
;
