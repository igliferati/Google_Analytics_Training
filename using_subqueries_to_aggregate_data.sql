SELECT * 
FROM `mimetic-firefly-371412.warehouse_orders.Orders `

SELECT * 
FROM `mimetic-firefly-371412.warehouse_orders.Warehouse `

/** Check company's total orders being fulfilled by ach warehouse **/

SELECT 
  Warehouse.warehouse_id,
  CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,
  COUNT(Orders.order_id) AS number_of_orders,
  (SELECT
    COUNT(*)
    FROM `mimetic-firefly-371412.warehouse_orders.Orders `)
  AS total_orders,
  CASE
      WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `mimetic-firefly-371412.warehouse_orders.Orders ` AS Orders) <= 0.20
  THEN "fullfilled 0-20% of Orders"
      WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `mimetic-firefly-371412.warehouse_orders.Orders ` AS Orders) > 0.20
  AND COUNT(Orders.order_id)/(SELECT COUNT(*) FROM `mimetic-firefly-371412.warehouse_orders.Orders ` AS Orders) <= 0.60
THEN "Fullfilled 21-60% of Orders"
ELSE "Fullfilled more than 60% of Orders"
END AS fulfillment_summary
FROM `mimetic-firefly-371412.warehouse_orders.Warehouse ` AS Warehouse
LEFT JOIN `mimetic-firefly-371412.warehouse_orders.Orders ` AS Orders
  ON orders.warehouse_id = Warehouse.warehouse_id
GROUP BY 
  Warehouse.warehouse_id,
  warehouse_name
HAVING 
  COUNT(Orders.order_id) > 0
