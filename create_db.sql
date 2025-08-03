CREATE DATABASE shopify_sales_db;

-- DROP TABLE IF EXISTS shopify_orders;

CREATE TABLE shopify_orders (
	admin_graphql_api_id TEXT,
    order_number INT,
    billing_country VARCHAR(50),
    billing_first_name VARCHAR(50),
    billing_last_name VARCHAR(50),
    billing_province VARCHAR(50),
    billing_zip VARCHAR(20),
    city VARCHAR(50),
    currency VARCHAR(10),
    customer_id INT,
    invoice_date TIMESTAMP,
    gateway VARCHAR(30),
    product_id BIGINT,
    product_type VARCHAR(50),
    variant_id BIGINT,
    quantity INT,
    subtotal_price DECIMAL(10,2),
    total_price_usd DECIMAL(10,2),
    total_tax DECIMAL(10,2)
);

COPY shopify_orders
FROM 'D:\project\shopify-sales-and-customer\Shopify Sales.csv'
DELIMITER ','
CSV HEADER;
