--Задание 2: DDL

-- 1. Создание таблицы Departments
create table Departments (
    DepartmentID SERIAL primary key,
    DepartmentName VARCHAR(50) unique not null,
    Location VARCHAR(50)
);

-- 2. Добавление столбца Email в  таблицу Employees
alter table Employees add column Email VARCHAR(100);

-- 3. Добавление ограничения UNIQUE к столбцу Email в таблице Employees и предварительное заполнение 
update Employees
set Email = CONCAT(LOWER(FirstName), '.', LOWER(LastName), '@example.com')
where Email is null;

alter table Employees
add constraint unique_email unique (Email);

-- 4. Переименование столбца Location
alter table Departments rename column Location to OfficeLocation;
