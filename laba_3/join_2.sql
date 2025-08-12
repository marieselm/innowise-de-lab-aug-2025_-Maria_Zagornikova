-- Задача 2 (JOIN)
-- Выведите список доставок со статусом и именем клиента

select s.status, c.first_name, c.last_name
from Shippings s
join Customers c ON s.customer = c.customer_id;
