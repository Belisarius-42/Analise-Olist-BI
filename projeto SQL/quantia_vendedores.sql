select t1.seller_state as estado, count(DISTINCT t1.seller_id) as quantia_vendedores, count(t1.seller_id) as itens_vendidos , sum(t2.price) as valor_total
FROM
tb_sellers as t1
inner join tb_order_items as t2 on t1.seller_id = t2.seller_id
group by estado
order by valor_total DESC
limit 10