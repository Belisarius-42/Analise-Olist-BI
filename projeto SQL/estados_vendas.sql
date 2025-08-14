select t1.customer_state as estado, count(t1.customer_unique_id) as quantia_clientes
FROM
tb_customers as t1
inner join tb_orders as t2 on t1.customer_id = t2.customer_id
where order_approved_at is not null
group by estado
order by quantia_clientes DESC
limit 10