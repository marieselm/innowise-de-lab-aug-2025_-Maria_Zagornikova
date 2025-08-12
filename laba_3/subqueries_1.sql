-- Задача 1 (SUBQUERIES)
-- Найдите всех клиентов, которые сделали заказ с максимальной суммой

select c.first_name, c.last_name, o.amount
from Orders o
join Customers c ON o.customer_id = c.customer_id
where o.amount = (
    select MAX(amount)
    from Orders
);
