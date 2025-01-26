# SQL Learning Questions and Exercises

This repository contains SQL learning questions and exercises for an online retail application. These exercises are organized step-by-step to progressively teach SQL concepts and practice queries.

---

## Step 1: Basics - Understanding Tables

1. List all the tables in the database.
2. Describe the structure of the `Users` table.
3. Identify the foreign keys in the `Buyer` and `Seller` tables.
4. What constraints are applied to the `Orders` table?
5. What is the default value of the `is_active` column in all tables?

---

## Step 2: Simple Queries

6. Retrieve all user details from the `Users` table.
7. Fetch all active buyers from the `Buyer` table.
8. List all sellers who were created after a specific date.
9. Retrieve all stores located in a specific city.
10. Get all products belonging to a specific brand.

---

## Step 3: Filtering and Sorting

11. List all users whose phone number starts with "987".
12. Retrieve all products of a specific color, sorted by price in descending order.
13. Get all addresses in a specific province, sorted alphabetically by city.

---

## Step 4: Joins

14. Fetch all credit cards associated with a specific user.
15. Retrieve all products and their corresponding store details.
16. List all orders and the items contained within each order.
17. Get the name and contact details of buyers who commented on a specific product.
18. Retrieve the payment details of all orders placed by a specific user.

---

## Step 5: Aggregations

19. Count the total number of active users in the database.
20. Find the total number of products sold in each store.
21. Calculate the total revenue generated from all orders.
22. Find the average product price for each brand.
23. Get the maximum and minimum grade given in comments for a specific product.

---

## Step 6: Subqueries

24. Find the names of users who have purchased items from a specific brand.
25. List all stores that sell products costing more than a certain price.
26. Retrieve all orders that contain a product of a specific type.

---

## Step 7: Advanced Queries

27. Identify the top 5 products by sales volume.
28. Retrieve the most recent order placed by a specific user.
29. Find users who have both a credit card and a debit card registered.
30. List all service points providing after-sales service for a specific brand.

---

## Step 8: Views

31. Create a view to list active users along with their buyer or seller roles.
32. Create a view to display all products with their store and brand details.
33. Create a view showing all orders along with their total quantity of items.
34. Create a view for all payments made, including the order and user details.

---

## Step 9: Stored Procedures

35. Write a stored procedure to add a new product to the `Product` table.
36. Write a stored procedure to deactivate a user based on their `userid`.
37. Create a stored procedure to calculate and return the total sales for a specific store.
38. Write a stored procedure to fetch all orders placed within a date range.
39. Create a procedure to update the stock of a product when a new order is placed.

---

## Step 10: Triggers

40. Create a trigger to automatically deactivate a user when their account is deleted.
41. Write a trigger to update the total revenue in the `Orders` table after an order is placed.
42. Create a trigger to log changes made to the `Comments` table.

---

## Step 11: Data Manipulation

43. Insert a new user into the `Users` table.
44. Add a new product to the `Product` table with a specific brand and store.
45. Update the `is_active` status of all orders older than a specific date to `FALSE`.
46. Delete a user and cascade the deletion to all associated data in other tables.

---

## Step 12: Transactions

47. Write a transaction to:
    - Insert an order into the `Orders` table.
    - Add items to the `OrderItem` table.
    - Update the product stock in the `Product` table.

48. Roll back a transaction if inserting an order or its items fails.

---

## Step 13: Functions

49. Write a function to calculate the total quantity of items in a specific order.
50. Create a function to fetch the full address for a specific `addrid`.

---

## Step 14: Performance Optimization

51. Add indexes to improve query performance on frequently used columns.
52. Analyze the execution plan of a query fetching all products and suggest improvements.

---

# Step 15: Practice with Realistic Scenarios (Enhanced)

### Customer and Order Insights
- **53.** Identify customers who haven't placed an order in the last 6 months.
- **54.** Retrieve the details of buyers who have placed orders for products worth more than ₹10,000 in a single order.
- **55.** Find the most frequently purchased product in the last 30 days.
- **56.** List all users who have both purchased products and commented on them.
- **57.** Get the average number of orders placed per buyer.

### Product and Inventory Management
- **58.** Identify products that are out of stock and need replenishment.
- **59.** Retrieve details of products that have been sold but not restocked in the last 3 months.
- **60.** Find products that have never been ordered since being added to the database.
- **61.** Get a report of products that have the highest return rate (if applicable, include returned product details).
- **62.** Identify the top 3 product categories that generate the most revenue.

### Store and Brand Performance
- **63.** List all stores that haven’t sold any products in the last quarter.
- **64.** Identify brands whose products have the highest average rating based on comments.
- **65.** Retrieve the revenue generated by each store in the last month, sorted from highest to lowest.
- **66.** Find the store with the most diverse range of products (count of distinct product categories).
- **67.** Identify which stores have the fastest order processing times (difference between order placement and delivery).

### Order Trends
- **68.** Get the percentage of orders that are paid using credit cards versus debit cards versus other payment methods.
- **69.** Find the most popular delivery cities based on order volume.
- **70.** Identify orders that have been canceled or returned and their corresponding reasons (if the `Orders` table has a `status` or `reason` column).
- **71.** Retrieve the time of day (morning, afternoon, evening) when most orders are placed.
- **72.** Identify repeat buyers who place orders at least once a week on average.

### User and Activity Tracking
- **73.** Identify users who have registered but haven’t made any activity (no orders, no comments).
- **74.** Retrieve a list of users who registered within the last 30 days and their associated activities.
- **75.** Find the top 5 most active buyers based on total orders, comments, and interactions.
- **76.** Determine the last login or activity time for all users (if an `activity_log` or `last_login` column exists).
- **77.** Fetch details of users who have updated their profile information in the last month.

### Operational Analytics
- **78.** Calculate the average order fulfillment time (time between order placement and order completion).
- **79.** List the top 3 payment methods used by buyers and their corresponding order counts.
- **80.** Retrieve the total value of refunds processed for canceled or returned orders.
- **81.** Find products that are most frequently purchased together (basket analysis).
- **82.** Retrieve a breakdown of revenue generated by province or city.

### Seasonal Trends
- **83.** Identify the most sold products during specific holidays (e.g., Diwali, Black Friday).
- **84.** Fetch monthly revenue trends for the past year, grouped by month.
- **85.** Determine which stores experience the highest seasonal variation in sales volume.
- **86.** Retrieve a list of products with steep price discounts over the last 6 months.
- **87.** Find product categories that show the highest growth in sales compared to the previous quarter.

### Marketing and Promotions
- **88.** Identify users eligible for a loyalty program (e.g., users with a total spend over ₹50,000).
- **89.** Retrieve a list of users who frequently purchase from the same store.
- **90.** Identify inactive users (no orders in the past 6 months) who can be targeted with re-engagement campaigns.
- **91.** Determine which product categories respond best to promotional discounts (based on increased order volume).
- **92.** Fetch details of users who abandoned their carts (if cart data exists) without completing the purchase.

### Join-Based Questions

- **93.** Retrieve the list of all customers and their corresponding orders, including customers who have not placed any orders.
- **94.** Find the total value of orders placed by each customer, including their name and order details.
- **95.** Retrieve the list of products ordered by each customer, including product name and order details.
- **96.** Get a list of all employees and the stores they are associated with.
- **97.** List all customers who have placed orders but have not provided any feedback.
- **98.** Find the total sales for each product category, combining product details and order details.
- **99.** Retrieve the orders placed by customers who live in specific cities.
- **100.** Get the list of orders, including product details and customer information for orders where the total amount is greater than ₹5,000.
- **101.** Find the list of employees who have processed the highest number of orders in the last 6 months.
- **102.** Retrieve details of stores that sold the most popular products.
