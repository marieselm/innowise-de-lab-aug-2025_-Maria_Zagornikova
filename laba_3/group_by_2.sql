-- Задача 2 (GROUP BY)
-- Посчитайте общее количество заказов и среднюю сумму по каждому товару

select item, COUNT(*) as count, ROUND(AVG(amount), 2) as avg_amount
from Orders
group by item;
