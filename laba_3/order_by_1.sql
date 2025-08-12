-- Задача 1 (ORDER BY)
-- Выведите список клиентов, отсортированный по возрасту по убыванию

select first_name, age
from Customers
order by age desc;