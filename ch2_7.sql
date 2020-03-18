-- ex
select
  AVG(Price) as 平均単価
from
  Products
;

-- Q1
select
  count(*) as お得意様数
from
  Customers
;

-- Q2
select
  sum(Weight) as 社員体重合計
from
  Employees
;

-- Q3
select
  max(Price) as 最高額価格
from
  Products
;

-- Q4
select
  min(Weight) as "最軽量体重"
from
  Employees
;

-- Q5
select
  AVG(Height) as "平均身長"
, AVG(Weight) as "平均体重"
from
  Employees
;
