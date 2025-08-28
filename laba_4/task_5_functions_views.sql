--Задание 5: Функции и представления

-- 1. Функция CalculateAnnualBonus
-- Назначение: рассчитывает годовой бонус сотрудника как 10% от его зарплаты.
-- Принимает: emp_id (не используется в теле функции, но может быть полезен для расширения логики)
-- Возвращает: бонус в формате DECIMAL
create or replace function CalculateAnnualBonus(salary DECIMAL)
returns DECIMAL as $$
begin
  return salary * 0.10;
end;
$$ language plpgsql;

-- 2. Использование функции CalculateAnnualBonus
-- Цель: показать потенциальный бонус для каждого сотрудника
-- Выводит: ID, имя, фамилию, зарплату и рассчитанный бонус
select EmployeeID, FirstName, LastName, Salary,
       CalculateAnnualBonus(EmployeeID, Salary) as Bonus
from Employees;

-- 3. Представление IT_Department_View которое показывает EmployeeID, FirstName, LastName и Salary только для сотрудников из отдела 'IT'
create view IT_Department_View as
select EmployeeID, FirstName, LastName, Salary
from Employees where Department = 'IT';

-- 4. Выбор из представления
SELECT * FROM IT_Department_View;
