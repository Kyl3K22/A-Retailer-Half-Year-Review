# A Retailer Half Year Review

## Summary:
An SQL analysis of the first six months of sales for a simulated retailer in 2016. This analysis provides a comprehensive and detailed examination of the company's sales data during this time period, utilizing SQL to extract meaningful insights and trends. Through this analysis, we can gain a deeper understanding of the retailer's performance, including its top-selling products, customer behavior, and sales trends over time.

**SQL analysis:**
* [Data Analysis Questions & Answers](https://github.com/Kyl3K22/Retailer-Half-Year-Review/blob/main/questions_and_answers.md)

**Download the powerpoint presentation of the discovered insights and suggestions for the future:**
* [Insights & Suggestion](https://github.com/Kyl3K22/Retailer-Half-Year-Review/blob/main/insights_and_suggestions.pptx)

## Dataset used:
There are three tables involved in this sample.db dataset: `transactions`, `segments` and `products`, which simulate a simplified retail data schema. Here is a semantic description of the tables:

1. `transactions`: contains detailed information about each product a customer has purchased.  A transaction consists of one or more products purchased by a customer indexed by a unique transaction id.
   * `trans_id`: the transaction id
   * `trans_dt`: transaction date
   * `cust_id`: the customer id
   * `prod_id`: the product id
   * `item_qty`: the quantity of the product that is being purchased
   * `item_price`: the per unit price of the product (NOTE: the total revenue for a product is `item_qty * item_price`)
2. `products`: contains detailed attributes about each product.
   * `prod_id`: the product id (same meaning as in `transactions`)
   * `prod_name`: the product name
   * `brand`: the brand of the product
   * `category`: the category of the product
3. `segments`: contains a history of customer segmentation labelling for each customer. Segments are computed periodically for all current customers and appended to the table after each computation. The current (most up to date) active segment for each customer is specified by `active_flag = 'Y'` column.
   * `cust_id`: the customer id (same meaning as in `transactions`)
   * `seg_name`: the segment of this customer
   * `update_at`: the date when this segment was updated
   * `active_flag`: whether or not this segment is the active segment for this customer

**Download dataset:**
* [sample.db](https://github.com/Kyl3K22/Retailer-Half-Year-Review/blob/main/sample.db)
* [csv files](https://github.com/Kyl3K22/Retailer-Half-Year-Review/tree/main/CSV)
