-- ex
select
  ProductName as 商品名
, Price * 1.05 as 税込価格
from
  Products
;

-- Q1
select
  Amount * 0.15 as "給与の15％"
from
  Salary
;

-- Q2
select
  Height * 0.5 as "身長の半分"
from
  Employees
;

-- Q3
select
  Weight * 3 - 50 as "体重の3倍引く50"
from
  Employees
;

-- Q4
select
  (Price + 100) * 0.3 as "（価格＋100）の30％"
from
  Products
;

-- Q5
select
  (Quantity + 200) / 3 as "（数量＋200）÷3"
from
  Sales
;
