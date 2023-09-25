CREATE TABLE IF NOT EXISTS product_categories(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    category VARCHAR(255) NOT NULL,
    parent_category BIGINT REFERENCES product_categories(id)
);

CREATE TABLE IF NOT EXISTS products(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    category_id BIGINT REFERENCES product_categories(id),
    product_name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS product_items(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    product_id BIGINT REFERENCES products(id),
    SKU VARCHAR(255) NOT NULL,
    product_item_name VARCHAR(255) NOT NULL,
    product_item_desc VARCHAR(255) NOT NULL,
    product_image VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS variations(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    category_id BIGINT REFERENCES product_categories(id),
    variation_type VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS variation_values(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    variation_id BIGINT REFERENCES variations(id),
    variation_value VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS product_inventory(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    product_item_id BIGINT REFERENCES product_items(id),
    qty_in_stock NUMERIC(10, 2),
    reorder_point NUMERIC(10, 2) NOT NULL,
    status VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS inventory_restock(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    product_inventory_id BIGINT REFERENCES product_inventory(id),
    last_restock_date TIMESTAMP NOT NULL,
    restock_qty NUMERIC(10,2) NOT NULL
);


-- Example data for product_inventory table
INSERT INTO product_inventory (product_item_id, qty_in_stock, reorder_point, status)
VALUES
    (1, 100, 20, 'In Stock'),  -- Product item with ID 1
    (2, 100, 20, 'In Stock'),  -- Product item with ID 2
    (3, 100, 20, 'In Stock'),  -- Product item with ID 3
    (4, 100, 20, 'In Stock'),  -- Product item with ID 4
    (5, 100, 20, 'In Stock'),  -- Product item with ID 5
    (6, 100, 20, 'In Stock'),  -- Product item with ID 6
    (7, 100, 20, 'In Stock'),  -- Product item with ID 7
    (8, 100, 20, 'In Stock'),  -- Product item with ID 8
    (9, 100, 20, 'In Stock'),  -- Product item with ID 9
    (10, 100, 20, 'In Stock'), -- Product item with ID 10
    (11, 100, 20, 'In Stock'), -- Product item with ID 11
    (12, 100, 20, 'In Stock'), -- Product item with ID 12
    (13, 100, 20, 'In Stock'), -- Product item with ID 13
    (14, 100, 20, 'In Stock'); -- Product item with ID 14

-- Example data for inventory_restock table
INSERT INTO inventory_restock (product_inventory_id, last_restock_date, restock_qty)
VALUES
    (1, '2023-09-20 10:00:00', 50.00), -- Restocked 50 units for Product ID 1 on September 20, 2023
    (2, '2023-09-21 09:30:00', 60.00), -- Restocked 60 units for Product ID 2 on September 21, 2023
    (3, '2023-09-22 14:15:00', 40.00), -- Restocked 40 units for Product ID 3 on September 22, 2023
    (4, '2023-09-23 11:45:00', 55.00), -- Restocked 55 units for Product ID 4 on September 23, 2023
    (5, '2023-09-24 08:20:00', 70.00), -- Restocked 70 units for Product ID 5 on September 24, 2023
    (6, '2023-09-25 15:30:00', 45.00), -- Restocked 45 units for Product ID 6 on September 25, 2023
    (7, '2023-09-26 12:10:00', 35.00), -- Restocked 35 units for Product ID 7 on September 26, 2023
    (8, '2023-09-27 10:45:00', 42.00), -- Restocked 42 units for Product ID 8 on September 27, 2023
    (9, '2023-09-28 09:00:00', 58.00), -- Restocked 58 units for Product ID 9 on September 28, 2023
    (10, '2023-09-29 14:55:00', 65.00), -- Restocked 65 units for Product ID 10 on September 29, 2023
    (11, '2023-09-30 11:20:00', 48.00), -- Restocked 48 units for Product ID 11 on September 30, 2023
    (12, '2023-10-01 08:45:00', 53.00), -- Restocked 53 units for Product ID 12 on October 1, 2023
    (13, '2023-10-02 13:40:00', 38.00), -- Restocked 38 units for Product ID 13 on October 2, 2023
    (14, '2023-10-03 10:15:00', 43.00); -- Restocked 43 units for Product ID 14 on October 3, 2023















