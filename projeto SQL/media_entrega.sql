select ROUND(avg(CAST(julianday(t1.order_delivered_customer_date) - julianday(t1.order_approved_at) AS INTEGER))) as tempo_MEDIO_entrega, t3.product_category_name as categoria
FROM tb_orders as t1
inner join tb_order_items as t2 on t1.order_id = t2.order_id
inner join tb_products as t3 on t2.product_id = t3.product_id
group by categoria
order by tempo_MEDIO_entrega DESC