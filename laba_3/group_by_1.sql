-- Задача 1 (GROUP BY)
-- Подсчитайте количество клиентов в каждой стране

select country, COUNT(*) as count
from Customers
group by country;