-- Задача 1 (Опционально)
-- Найдите клиентов, которые:
-- 1. сделали хотя бы 2 заказа
-- 2. имеют хотя бы одну доставку со статусом 'Delivered'
-- Выведите: full_name, total_orders, total_amount, country

select  
    CONCAT(c.first_name, ' ', c.last_name) as full_name,
    c.country,
    COUNT(o.order_id) as total_orders,
    SUM(o.amount) as total_amount
from Customers c
join Orders o on c.customer_id = o.customer_id
join Shippings s on c.customer_id = s.customer
where s.status = 'Delivered'
group by c.customer_id, c.first_name, c.last_name, c.country
having COUNT(o.order_id) >= 2;
