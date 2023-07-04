SELECT
purchase_price
FROM
customer_data.customer_purchase
ORDER BY 
  purchase_price DESC

/** We use CAST to convert the data type to convert purchase_price from float instead of string **/ 

SELECT
CAST(purchase_price AS FLOAT64)
FROM
customer_data.customer_purchase
ORDER BY 
  CAST(purchase_price AS FLOAT64) DESC

