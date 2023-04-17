
# Half Year Review









## Author

**Name:** Kyle Khuat

**Email:** 2k.datascience@gmail.com

**LinkedIn:** https://www.linkedin.com/in/quan-kyle-khuat-8a4876119/



## Questions and Answers

**What were the total revenue for each month in the first half?**
```sql
SELECT strftime('%m', trans_dt) as month, SUM(item_price*item_qty) AS revenue
FROM transactions
GROUP BY month;
```

**Result:**
| month	| revenue |
|--- | --- |
| 01	| 66774.6599999991 |
| 02	| 6699.12999999998 |
| 03	| 8591.28999999997 |
| 04	| 8566.64999999997 |
| 05	| 8219.07999999997 |
| 06	| 4337.52999999999 |
