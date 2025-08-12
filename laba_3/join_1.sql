-- Задача 1 (JOIN)
-- Получите список заказов вместе с именем клиента, который сделал заказ

select c.first_name, c.last_name, o.item, o.amount
from Orders o
join Customers c ON o.customer_id = c.customer_id;