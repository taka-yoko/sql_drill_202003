-- ex
select
  CustomerName || '様' as お名前
from
  Customers
;

-- Q1
select
  EmployeeName || 'さん' as 社員名
from
  Employees
;

-- Q2
select
  'E-MAIL:' || EMail as メールアドレス
from
  Employees
;

-- Q3
select
  EmployeeName || 'さんのE-MAIL:' || EMail as 連絡先
from
  Employees
;

-- Q4
select
  CustomerName || '様のお住まいは' || Address as お得意様連絡先
from
  Customers
;

-- Q5
select
  '社員' || EmployeeName || 'さんの血液型は' || BloodType || '型' as 社員血液型
from
  Employees
;
