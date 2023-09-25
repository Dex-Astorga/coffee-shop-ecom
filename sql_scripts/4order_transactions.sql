CREATE TABLE IF NOT EXISTS trays(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    user_id_ BIGINT NOT NULL REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS tray_items(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    tray_id BIGINT REFERENCES trays(id),
    product_item_id BIGINT REFERENCES product_items(id),
    qty INT NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS order_status(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    order_status VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS order_transactions(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    user_id_ BIGINT REFERENCES users(id),
    tray_id BIGINT REFERENCES trays(id),
    payment_method_id BIGINT REFERENCES payment_methods(id),
    address_id BIGINT REFERENCES addresses(id),
    order_status BIGINT REFERENCES order_status(id),
    order_date TIMESTAMP NOT NULL,
    order_total NUMERIC(10, 2) NOT NULL
);

-- Insert rows into the tray table with user_id values
INSERT INTO trays (user_id_)
VALUES
    (1), -- User John Doe's tray
    (2), -- User Jane Smith's tray
    (3), -- User Alice Johnson's tray
    (4), -- User Sarah Wilson's tray
    (5), -- User Michael Brown's tray
    (6), -- User Emily Jones's tray
    (7), -- User David Lee's tray
    (8), -- User Olivia Garcia's tray
    (9), -- User William Martinez's tray
    (10); -- User Sophia Hernandez's tray

-- Insert rows into the tray_items table with tray_id, product_item_id, qty, and price values
INSERT INTO tray_items (tray_id, product_item_id, qty, price)
VALUES
    (1, 1, 2, 5.98), -- John Doe's tray, containing Espresso Shot (2 qty) at $2.99 each
    (2, 3, 1, 3.49), -- Jane Smith's tray, containing Iced Coffee (1 qty) at $3.49
    (3, 5, 3, 8.97), -- Alice Johnson's tray, containing Baguette (3 qty) at $2.99 each
    (4, 7, 2, 3.98), -- Sarah Wilson's tray, containing Croissant (2 qty) at $1.99 each
    (5, 9, 2, 7.98), -- Michael Brown's tray, containing Chocolate Cake Slice (2 qty) at $3.99 each
    (6, 11, 1, 8.99), -- Emily Jones's tray, containing Spaghetti (1 qty) at $8.99
    (7, 13, 3, 20.97), -- David Lee's tray, containing Macaroni and Cheese (3 qty) at $6.99 each
    (8, 7, 1, 1.99), -- Olivia Garcia's tray, containing Croissant (1 qty) at $1.99 each
    (9, 12, 2, 17.98), -- William Martinez's tray, containing Spaghetti (2 qty) at $8.99 each
    (10, 14, 1, 6.99); -- Sophia Hernandez's tray, containing Macaroni and Cheese (1 qty) at $8.99

-- Insert tailored order statuses for a coffee shop online store
INSERT INTO order_status (order_status)
VALUES
    ('Order Placed'),
    ('Payment Confirmed'),
    ('Brewing Coffee'),
    ('Out for Delivery'),
    ('Order Completed'),
    ('Order Cancelled');

-- Example data for order_transactions table
INSERT INTO order_transactions (user_id_, tray_id, payment_method_id, address_id, order_status, order_date, order_total)
VALUES
    (1, 1, 1, 1, 1, '2023-09-25 14:30:00', 15.99),  -- Example order for John Doe
    (2, 2, 2, 2, 1, '2023-09-25 15:15:00', 12.49),  -- Example order for Jane Smith
    (3, 3, 3, 3, 1, '2023-09-25 16:00:00', 17.99),  -- Example order for Alice Johnson
    (4, 4, 4, 4, 1, '2023-09-25 16:45:00', 22.99),  -- Example order for Sarah Wilson
    (5, 5, 5, 5, 1, '2023-09-25 17:30:00', 19.99),  -- Example order for Michael Brown
    (6, 6, 6, 6, 1, '2023-09-25 18:15:00', 25.99),  -- Example order for Emily Jones
    (7, 7, 7, 7, 1, '2023-09-25 19:00:00', 31.99),  -- Example order for David Lee
    (8, 8, 8, 8, 1, '2023-09-25 19:45:00', 28.49),  -- Example order for Olivia Garcia
    (9, 9, 9, 9, 1, '2023-09-25 20:30:00', 35.99),  -- Example order for William Martinez
    (10, 10, 10, 10, 1, '2023-09-25 21:15:00', 29.99);  -- Example order for Sophia Hernandez




























