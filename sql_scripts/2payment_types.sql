CREATE TABLE IF NOT EXISTS payment_types(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    payment_type VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS payment_methods(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    user_id_ BIGINT REFERENCES users(id),
    payment_type_id BIGSERIAL REFERENCES payment_types(id),
    bank VARCHAR(255),
    account_number VARCHAR(100),
    expiry_date_ DATE,
    is_default BOOLEAN NOT NULL
);

-- POPULATE
INSERT INTO payment_types (payment_type)
VALUES
    ('Credit Card'),
    ('Debit Card'),
    ('PayPal'),
    ('Bank Transfer'),
    ('Cash On Delivery');

-- POPULATE
INSERT INTO payment_methods (user_id_, payment_type_id, bank, account_number, expiry_date_, is_default)
VALUES
    -- User 1
    (1, 1, 'Bank A', '1234567890', '2024-12-31', TRUE),   -- Default
    (1, 2, 'Bank X', '9999888877', '2023-07-15', FALSE),  -- Non-Default

    -- User 2
    (2, 2, 'Bank B', '9876543210', '2025-11-30', TRUE),   -- Default
    (2, 3, 'Bank Y', '7777666655', '2023-09-30', FALSE),  -- Non-Default

    -- User 3
    (3, 3, 'Bank C', '5555555555', '2026-10-15', TRUE),   -- Default
    (3, 4, 'Bank Z', '3333222211', '2024-05-10', FALSE),  -- Non-Default

    -- User 4
    (4, 4, 'Bank D', '1111222233', '2024-09-20', TRUE),   -- Default
    (4, 5, 'Bank W', NULL, '2025-08-05', FALSE),          -- Non-Default

    -- User 5
    (5, 5, 'Bank E', NULL, '2025-08-05', TRUE),           -- Default
    (5, 1, 'Bank V', '8888777766', '2023-12-31', FALSE),  -- Non-Default

    -- User 6
    (6, 1, 'Bank F', '1234567890', '2024-12-31', TRUE),   -- Default
    (6, 2, 'Bank X', '9999888877', '2023-07-15', FALSE),  -- Non-Default

    -- User 7
    (7, 2, 'Bank B', '9876543210', '2025-11-30', TRUE),   -- Default
    (7, 3, 'Bank Y', '7777666655', '2023-09-30', FALSE),  -- Non-Default

    -- User 8
    (8, 3, 'Bank C', '5555555555', '2026-10-15', TRUE),   -- Default
    (8, 4, 'Bank Z', '3333222211', '2024-05-10', FALSE),  -- Non-Default

    -- User 9
    (9, 4, 'Bank D', '1111222233', '2024-09-20', TRUE),   -- Default
    (9, 5, 'Bank W', NULL, '2025-08-05', FALSE),          -- Non-Default

    -- User 10
    (10, 5, 'Bank E', NULL, '2025-08-05', TRUE),          -- Default
    (10, 1, 'Bank V', '8888777766', '2023-12-31', FALSE); -- Non-Default

-- Run this code because cash on deliveries should not have things a bank card have
UPDATE payment_methods SET bank = NULL, expiry_date_ = NULL WHERE account_number IS NULL;










