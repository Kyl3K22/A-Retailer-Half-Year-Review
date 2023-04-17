--What was the total revenue for each month in the first half?
SELECT strftime('%m', trans_dt) as month, SUM(item_price*item_qty) AS total_revenue
FROM transactions
GROUP BY month;

--Results:
month|total_revenue   |
-----+----------------+
01  |66774.6599999991|
02  |6699.12999999998|
03  |8591.28999999997|
04  |8566.64999999997|
05  |8219.07999999997|
06  |4337.52999999999|

--What was the best selling category in the first half?
SELECT p.category, SUM(t.item_price*t.item_qty) AS total_revenue
FROM transactions AS t
LEFT JOIN products AS p
ON t.prod_id = p.prod_id
GROUP BY p.category
ORDER BY revenue DESC;

--Results:
|category   |total_revenue   |
------------+----------------+
|Women	    |57269.7799999996|
|Make up    |26734.2400000004|
|Men	    |16158.72        |
|Accessoires|1756.86         |
|Sun	    |1268.74         |

