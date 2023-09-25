\copy (SELECT * FROM users) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/users.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM regions) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/regions.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM addresses) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/addresses.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM users_addresses) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/users_addresses.csv' DELIMITER ',' CSV HEADER;

\copy (SELECT * FROM payment_types) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/payment_types.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM payment_methods) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/payment_methods.csv' DELIMITER ',' CSV HEADER;


\copy (SELECT * FROM product_categories) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/product_categories.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM products) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/products.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM product_items) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/product_items.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM variations) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/variations.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM variation_values) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/variation_values.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM product_inventory) TO 'C:\Users\Dexter\Documents\ENGINEER_DATABASE\coffee_shop_ecommerce\csv_files\product_inventory.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM inventory_restock) TO 'C:\Users\Dexter\Documents\ENGINEER_DATABASE\coffee_shop_ecommerce\csv_files\inventory_restock.csv' DELIMITER ',' CSV HEADER;


\copy (SELECT * FROM trays) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/trays.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM tray_items) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/tray_items.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM order_status) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/order_status.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM order_transactions) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/order_transactions.csv' DELIMITER ',' CSV HEADER;


\copy (SELECT * FROM user_reviews) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/user_reviews.csv' DELIMITER ',' CSV HEADER;


\copy (SELECT * FROM discount_types) TO 'C:\Users\Dexter\Documents\ENGINEER_DATABASE\coffee_shop_ecommerce\csv_files\discount_types.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM discount_offers) TO 'C:\Users\Dexter\Documents\ENGINEER_DATABASE\coffee_shop_ecommerce\csv_files\discount_offers.csv' DELIMITER ',' CSV HEADER;
\copy (SELECT * FROM discount_offers_product_categories) TO 'C:\Users\Dexter\Documents\ENGINEER_DATABASE\coffee_shop_ecommerce\csv_files\discount_offers_product_categories.csv' DELIMITER ',' CSV HEADER;


\copy (SELECT * FROM delivery_drivers) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/delivery_drivers.csv' WITH CSV HEADER;
\copy (SELECT * FROM drivers_license) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/drivers_license.csv' WITH CSV HEADER;
\copy (SELECT * FROM vehicle_information) TO 'C:/Users/Dexter/Documents/ENGINEER_DATABASE/coffee_shop_ecommerce/csv_files/vehicle_information.csv' WITH CSV HEADER;


