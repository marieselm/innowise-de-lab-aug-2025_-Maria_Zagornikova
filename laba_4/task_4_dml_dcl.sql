--Задание 4: DML/DCL

-- 1. Увеличение зарплаты в HR на 10%
update Employees set Salary = Salary * 1.10 where Department = 'HR';

-- 2. Обновление отдела при зарплате > 70000
update Employees set Department = 'Senior IT' where Salary > 70000.00;

-- 3. Удаление сотрудников без проектов
delete from Employees
where not exists (
    select 1 from EmployeeProjects ep where ep.EmployeeID = Employees.EmployeeID
);

-- 4. Вставка проекта и назначение сотрудников
begin;
insert into Projects (ProjectName, Budget, StartDate, EndDate)
values ('New Initiative', 100000.00, '2025-08-01', '2025-12-31');

insert into EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
values (1, 4, 90), (3, 4, 100);
commit;