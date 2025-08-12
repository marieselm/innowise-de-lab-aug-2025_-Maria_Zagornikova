-- Задача 1 (WINDOW FUNCTIONS)
-- Для каждого заказа добавьте колонку с суммой всех заказов этого клиента

select
    order_id,
    customer_id,
    item,
    amount,
    SUM(amount) over (partition by customer_id) as total_by_customer
from Orders;