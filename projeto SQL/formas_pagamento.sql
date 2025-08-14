SELECT
    payment_type AS forma_pagamento,
    COUNT(order_id) AS quantia,
    ROUND((COUNT(order_id) * 100.0 / SUM(COUNT(order_id)) OVER ())) AS porcentagem
FROM
    tb_order_payments
GROUP BY
    forma_pagamento
ORDER BY
    quantia DESC;