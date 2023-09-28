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

-- 5. Fetch all of the product items with variation value of small
SELECT pit.product_item_name AS item,
       pit.SKU,
       pit.price,
       vv.variation_value
       FROM product_items pit
    JOIN product_items_variation_values pivv
    ON pivv.product_item_id = pit.id
    JOIN variation_values vv
    ON vv.id = pivv.variation_value_id
WHERE variation_value = 'Small';

-- 6. Get all transaction of user with id 1
SELECT u.id,
       CONCAT(u.first_name, ' ', u.last_name),
       ot.id
       FROM users u
    JOIN order_transactions ot
    ON ot.user_id_ = u.id
WHERE u.id = 1;

-- 7. Get all the order items in of transaction from number 6
SELECT u.id AS user_id_,
       CONCAT(u.first_name, ' ', u.last_name),
       ot.id AS transaction_id,
       pit.product_item_name AS item,
       pit.SKU,
       pit.price
       FROM users u
    JOIN order_transactions ot
    ON ot.user_id_ = u.id
    JOIN trays t
    ON t.id = ot.tray_id
    JOIN tray_items ti
    ON ti.tray_id = t.id
    JOIN product_items pit
    ON pit.id = ti.product_item_id
WHERE u.id = 1;

-- 8. Get all reviews with the word 'coffee' in them
SELECT * FROM user_reviews WHERE comment iLIKE '%coffee%'; 

-- 9. All reviews of rating below 4
SELECT * FROM user_reviews WHERE rating_score < 4;

-- 10. Get all promo names
SELECT discount_name, start_date_, end_date_ FROM discount_offers;

-- 11. Fetch the driver name, their licence numbers, and what vehicle they drive
SELECT CONCAT(dd.first_name, ' ', dd.last_name),
        dl.license_number,
        CONCAT(vi.vehicle_make, ' - ', vi.vehicle_model)
        FROM delivery_drivers dd
    JOIN drivers_license dl
    ON dl.delivery_driver_id = dd.id
    JOIN vehicle_information vi
    ON vi.delivery_driver_id = dd.id;
















