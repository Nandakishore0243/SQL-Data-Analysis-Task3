SELECT * FROM customer_data WHERE Age > 25;

SELECT * FROM customer_data ORDER BY Average_Order_Value DESC;

SELECT Gender, AVG(Average_Order_Value) AS avg_order
FROM customer_data GROUP BY Gender;

SELECT SUM(Average_Order_Value) AS total_revenue
FROM customer_data;

SELECT * FROM customer_data
WHERE Average_Order_Value > (
SELECT AVG(Average_Order_Value) FROM customer_data
);

CREATE VIEW high_value_customers AS
SELECT * FROM customer_data WHERE Average_Order_Value > 500;

CREATE INDEX idx_age ON customer_data(Age);