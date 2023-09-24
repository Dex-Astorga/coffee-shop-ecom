-- 1. Get the region where customer 4 lives.
SELECT u.id, CONCAT(u.first_name, ' ', u.last_name), r.region_name
        FROM users u
    JOIN users_addresses ud
    ON u.id = ud.user_id_
    JOIN addresses a
    ON a.id = ud.address_id
    JOIN regions r
    ON r.id = a.region_id
WHERE u.id = 4;

-- 2. Get all users with more than 1 address
SELECT ua.user_id_, CONCAT(u.last_name, ', ', u.first_name) AS full_name, COUNT(*)
        FROM users_addresses ua
    JOIN users u
    ON u.id = ua.user_id_
GROUP BY ua.user_id_,  full_name HAVING COUNT(*) > 1;

-- 3. Fetch everyone who uses COD 
-- THIS IS HOW LONGS QUERIES ARE IF WE DO NOT USE TABLE ALIASES
SELECT users.id, payment_types.payment_type FROM payment_types
    JOIN payment_methods
    ON payment_methods.payment_type_id = payment_types.id
    JOIN users 
    ON users.id = payment_methods.user_id_
WHERE payment_types.payment_type = 'Cash On Delivery';

-- 4. Join all of the tables in 3products.sql
SELECT * FROM products p
    FULL JOIN product_items pi_ ON pi_.product_id = p.id
    FULL JOIN product_categories pc ON pc.id = p.category_id
    FULL JOIN variations v ON v.category_id = pc.id
    FULL JOIN variation_values vv ON vv.variation_id = v.id
    FULL JOIN product_items_variation_values pivv ON pivv.product_item_id = pi_.id;









