-- Задание 6: DML (Optional) 

-- 1. Выбор названий проектов, где Bob Johnson работал более 150 часов
select p.ProjectName
from Projects p
join EmployeeProjects ep on p.ProjectID = ep.ProjectID
join Employees e on ep.EmployeeID = e.EmployeeID
where e.FirstName = 'Bob' and e.LastName = 'Johnson' and ep.HoursWorked > 150;

-- 2. Увеличение бюджета на 10% для проектов, в которых участвуют сотрудники из отдела 'IT'
update Projects
set Budget = Budget * 1.10
where  ProjectID in (
    select distinct ep.ProjectID
    from EmployeeProjects ep
    join Employees e on ep.EmployeeID = e.EmployeeID
    where e.Department = 'IT'
);

-- 3. Установка даты завершения проекта на один год позже даты начала, если EndDate отсутствует
update Projects
set EndDate = StartDate + INTERVAL '1 year'
where EndDate is null;

-- 4. Вставка нового сотрудника и назначение его на проект 'Website Redesign' с 80 часами
-- Используется транзакция и RETURNING для получения нового EmployeeID
begin;
insert into Employees (FirstName, LastName, Department, Salary)
values ('Greg', 'Miller', 'Design', 50000.00)
returning EmployeeID into new_emp_id;

insert into EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
values (new_emp_id, 1, 80);
commit;

