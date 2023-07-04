SELECT
  date,
  purchase_price
FROM
  customer_data.customer_purchase
WHERE
  date BETWEEN '2020-12-01'AND '2020-12-31'

/** We use CAST function **/

SELECT
  CAST (date AS date) AS date_only,
  purchase_price
FROM
  customer_data.customer_purchase
WHERE
  date BETWEEN '2020-12-01'AND '2020-12-31'

/** CONCAT to add strings together to create new strings **/

SELECT
  CONCAT(product_code,product_color) AS new_product_code
FROM
  customer_data.customer_purchase
WHERE
  product = 'couch'

  /** COALESCE to return non-null values in a list **/

  SELECT * FROM customer_data.customer_purchase

SELECT
  COALESCE(product,product_code) AS product_info
FROM
  customer_data.customer_purchase --- We used COALESCE to remove nulled values that are not important to be on the list ----
