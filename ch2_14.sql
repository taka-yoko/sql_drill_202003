-- ch2_14.sql

-- ex
select
  HireFiscalYear as "入社年度"
, sum(
      case
        when BloodType = 'A' then 1
        else 0
      end
    ) as "A型"
, sum(
      case
        when BloodType = 'B' then 1
        else 0
      end
    ) as "B型"
, sum(
      case
        when BloodType = 'O' then 1
        else 0
      end
      ) as "O型"
, sum(
      case
        when BloodType = 'AB' then 1
        else 0
      end
      ) as "AB型"
from
  Employees
group by
  HireFiscalYear
;

-- Q1
select
  HireFiscalYear as "入社年度"
, sum(
      case
        when Height <= 160 then 1
        else 0
      end
    ) as "160cm以下"
, sum(
      case
        when Height <= 170 then 1
        else 0
      end
    ) as "170cm以下"
, sum(
      case
        when Height <= 180 then 1
        else 0
      end
      ) as "180cm以下"
, sum(
      case
        when Height > 180 then 1
        else 0
      end
    ) as "181cm以上"
from
  Employees
group by
  HireFiscalYear
;

-- Q2
select
  CategoryID as "商品カテゴリID"
, sum(
      case
        when Price < 100 then 1
        else 0
      end
      ) as "100円未満"
, sum(
      case
        when Price < 400 then 1
        else 0
      end
      ) as "400円未満"
, sum(
      case
        when Price < 1000 then 1
        else 0
      end
      ) as "1000円未満"
, sum(
      case
        when Price >= 1000 then 1
        else 0
      end
      ) as "1000円以上"
from
  Products
group by
  CategoryID
;

-- Q3
select
  CustomerID as "顧客ID"
, sum(
      case
        when SaleDate >= '2006-09-01' and SaleDate <= '2006-09-30' then quantity
        else 0
      end
      ) as "9月"
, sum(
      case
        when SaleDate between '2006-10-01' and '2006-10-31' then quantity
        else 0
      end
    ) as "10月"
, sum(
      case
        when SaleDate between '2006-11-01' and '2006-11-30' then quantity
        else 0
      end
    ) as "11月"
from
  Sales
where
  SaleDate between '2006-01-01' and '2006-12-31'
group by
  CustomerID
;

-- Q3-2
select
  CustomerID as "顧客ID"
, sum(
      case
        when month(SaleDate) = 9 then quantity
        else 0
      end
      ) as "9月"
, sum(
      case
        when month(SaleDate) = 10 then quantity
        else 0
      end
    ) as "10月"
, sum(
      case
        when month(SaleDate) = 11 then quantity
        else 0
      end
    ) as "11月"
from
  Sales
where
  year(SaleDate) = 2006
group by
  CustomerID
;

-- Q3
select
  PrefecturalID as "都道府県ID"
, sum(
      case
        when CustomerClassID = 1 then 1
        else 0
      end
      ) as "法人"
, sum(
      case
        when CustomerClassID = 2 then 1
        else 0
      end
      ) as "個人"
from
  Customers
group by
  PrefecturalID
;

--Q5
select
  HireFiscalYear as "入社年度"
,  sum(
      case
        when Weight <= 50 then 1
        else 0
      end
      ) as "50kg以下"
, sum(
      case
        when Weight <= 60 then 1
        else 0
      end
      ) as "51～60kg"
, sum(
      case
        when Weight <= 80 then 1
        else 0
      end
      ) as "61～80kg"
, sum(
      case
        when Weight > 80 then 1
        else 0
      end
) as "80kg超"
from
  Employees
group by
  HireFiscalYear
;
