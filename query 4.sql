SELECT b.brand_name, s.store_name, COUNT(oi.item_id) AS total_vendas
FROM brands b
INNER JOIN products p ON b.brand_id = p.brand_id
INNER JOIN order_items oi ON p.product_id = oi.product_id
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN stores s ON o.store_id = s.store_id
GROUP BY b.brand_name, s.store_name;