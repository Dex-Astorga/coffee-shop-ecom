CREATE TABLE IF NOT EXISTS discount_types(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    discount_type VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS discount_offers(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    discount_type_id BIGINT REFERENCES discount_types(id),
    discount_name VARCHAR(255) NOT NULL,
    discount_desc VARCHAR(255) NOT NULL,
    discount_rate NUMERIC(5, 2) NOT NULL,
    start_date_ DATE NOT NULL,
    end_date_ DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS discount_offers_product_categories(
    discount_offer_id BIGINT REFERENCES discount_offers(id),
    category_id BIGINT REFERENCES product_categories(id)
);


-- Insert discount types into the discount_types table
INSERT INTO discount_types (discount_type)
VALUES
    ('Rainy Day Season'),
    ('Summer Season'),
    ('Anniversary Discount');
 

-- Insert sample data into the discount_offers table
INSERT INTO discount_offers (discount_type_id, discount_name, discount_desc, discount_rate, start_date_, end_date_)
VALUES
    (1, 'Rainy Day Season Sale', 'Get 15% off on all products', 0.15, '2023-09-01', '2023-09-30'),
    (2, 'Summer Season Sale', 'Save $10 on your purchase', 0.10, '2023-06-15', '2023-08-31'),
    (3, 'Anniversary Discount', 'Celebrate with 25% off', 0.25, '2023-10-10', '2023-10-15');


-- Insert sample data into the discount_offers_product_categories table
INSERT INTO discount_offers_product_categories (discount_offer_id, category_id)
VALUES
    (1, 1), -- Rainy Day Season Sale (Coffee)
    (1, 2), -- Rainy Day Season Sale (Pastry)
    (2, 1), -- Summer Season Sale (Coffee)
    (2, 2), -- Summer Season Sale (Pastry)
    (3, 1), -- Anniversary Discount (Coffee)
    (3, 2), -- Anniversary Discount (Pastry)
    (3, 7); -- Anniversary Discount (Cakes)

