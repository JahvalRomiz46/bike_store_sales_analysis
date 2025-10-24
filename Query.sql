# Joined all tables

SELECT 
	ord. order_id, 
    CONCAT (cus.first_name, ' ', cus.last_name) AS 'customers',
    cus.city,
    cus.state,
    ord.order_date,
    SUM(ite.quantity) AS 'total_units',
    SUM(ite.quantity * ite.list_price) AS 'revenue',
    pro.product_name,
    cat.category_name,
    sto.store_name,
    CONCAT(sta.first_name, ' ', sta.last_name) AS 'sales_rep'
FROM sales_orders ord
JOIN sales_customers cus
ON ord.customer_id = cus.customer_id
JOIN sales_order_items ite
ON ord.order_id = ite.order_id
JOIN production_products pro
ON ite.product_id = pro.product_id
JOIN production_categories cat
ON pro.category_id = cat.category_id
JOIN sales_stores sto
ON ord.store_id = sto.store_id
JOIN sales_staffs sta
ON ord.staff_id = sta.staff_id
GROUP BY
	ord.order_id, 
    customers,
    cus.city,
    cus.state,
    ord.order_date,
    pro.product_name,
	cat.category_name,
	sto.store_name,
    sales_rep
ORDER BY ord.order_id;