select sum(t1.price) as valor, t2.product_category_name as categoria
 FROM
tb_order_items as t1
left join tb_products as t2 on t1.product_id = t2.product_id
group by categoria
order by valor DESC
limit 10