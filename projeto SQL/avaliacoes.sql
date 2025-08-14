select avg(t1.review_score) as media_avaliacao, count(t1.review_score) as qtde_avaliacoes, t3.product_category_name as categoria_produto
from tb_order_reviews as t1
left join tb_order_items as t2 on t1.order_id = t2.order_id
left join tb_products as t3 on t2.product_id = t3.product_id
group by categoria_produto
having qtde_avaliacoes>50
order by media_avaliacao DESC
