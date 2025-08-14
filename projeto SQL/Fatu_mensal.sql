select 
    t1.order_id as id, t1.order_status as status, strftime('%Y/%m', t1.order_approved_at) as data_aprovacao, sum(t2.payment_value) as valor_ordem
 from tb_orders as t1
INNER join tb_order_payments as t2 on t1.order_id = t2.order_id
where data_aprovacao is not null
group by data_aprovacao 
order by data_aprovacao DESC;