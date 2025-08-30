--Задание 3: DCL

-- 1. Создание нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем
create role hr_user with LOGIN password '1234';

-- 2. Предоставление hr_user право SELECT на таблицу Employees
grant select on Employees to hr_user;

-- 3. Подключение через hr_user и проверка SELECT (успешно)
select * from Employees;

-- 4. Проверка INSERT через hr_user (до выдачи прав — должна быть ошибка)
insert into Employees (FirstName, LastName, Department, Salary)
values ('Test', 'User', 'HR', 50000.00);

-- 5. Предоставление прав INSERT и UPDATE как пользователь-админ
grant insert, update on Employees to hr_user;
grant usage, select on sequence employees_employeeid_seq to hr_user;

-- 6. Финальный тест: INSERT и UPDATE от имени hr_user. Ожидаемый результат: оба запроса выполняются успешно

-- INSERT нового сотрудника
insert into Employees (FirstName, LastName, Department, Salary)
values ('Frank', 'Miller', 'Marketing', 55000.00);

-- UPDATE существующего сотрудника
update Employees
set Salary = 77000.00
where FirstName = 'Bob' and LastName = 'Johnson';

-- Проверка результатов
select * from Employees
where FirstName = 'Frank' or (FirstName = 'Bob' and LastName = 'Johnson');