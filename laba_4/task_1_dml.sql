--Задание 1: DML

-- 1. Вставка двух новых сотрудников в таблицу Employees
insert into  Employees (FirstName, LastName, Department, Salary)
values ('John', 'Doe', 'Marketing', 55000.00),
       ('Jane', 'Taylor', 'IT', 72000.00);

-- 2. Выбор всех сотрудников из таблицы Employees
select  * from Employees;

-- 3. Выбор только FirstName и LastName сотрудников из отдела IT
select FirstName, LastName from  Employees where Department = 'IT';

-- 4. Обновление Salary (з/п) 'Alice Smith' до 65000.00
update Employees set Salary = 65000.00 where FirstName = 'Alice' and LastName = 'Smith';

-- 5. Удаление сотрудника с фамилией Prince
delete from EmployeeProjects
where EmployeeID = (select EmployeeID from Employees where LastName = 'Prince');
delete from Employees where LastName = 'Prince';

-- 6. Проверка всех изменений
select * from Employees;
