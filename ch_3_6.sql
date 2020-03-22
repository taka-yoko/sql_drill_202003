-- ch_.sql

-- ex
select
  p.ProductName
, s1.SaleDate
from
  Sales as s1
    inner join
  Products as p
    on s1.ProductID = p.ProductID
where
  s1.Quantity >
  (
    select
      avg(Quantity)
    from
      Sales as s2
    where
      s1.ProductID = s2.ProductID
  )
order by
  p.ProductID
, s1.SaleDate desc
;

-- Q1
select distinct
  s1.ProductID
, p.ProductName
, s1.Quantity
from
  Sales as s1
    inner join
  Products as p
    on s1.ProductID = p.ProductID
where
  s1.Quantity =
  (
    select
      max(Quantity)
    from
      Sales as s2
    where
      s1.ProductID = s2.ProductID
  )
order by
  s1.ProductID
;

-- Q1 別解
select
  s.ProductID
, p.ProductName
, max(s.Quantity) as "Quantity"
from
  Sales as s
    inner join
  Products as p
    on s.ProductID = p.ProductID
group by
  s.ProductID
order by
  s.ProductID
;

-- Q2
select
  p.ProductID
, p.ProductName
from
  Products as p
where
  exists
  (
    select
      s.ProductID
    from
      Sales as s
    where
      s.ProductID = p.ProductID
  )
;

-- Q3
select
  p.ProductID
, p.ProductName
from
  Products as p
where
  not exists
  (
    select
      s.ProductID
    from
      Sales as s
    where
      s.ProductID = p.ProductID
  )
;

-- Q4
select
  s.ProductID
, p.ProductName
, max(s.Quantity) as Quantity
from
  Sales as s
    inner join
  Products as p
    on s.ProductID = p.ProductID
group by
  s.ProductID
order by
  s.ProductID
;

-- Q5
select
  s.ProductID
, max(p.ProductName) as ProductName
from
  Sales as s
    inner join
  Products as p
    on s.ProductID = p.ProductID
group by
  s.ProductID
having
  (max(s.Quantity) * 0.1) >= avg(s.Quantity)
order by
  s.ProductID
;

