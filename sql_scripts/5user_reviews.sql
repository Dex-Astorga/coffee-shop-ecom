CREATE TABLE IF NOT EXISTS user_reviews(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    user_id_ BIGINT REFERENCES users(id),
    order_transaction_id BIGINT REFERENCES order_transactions(id),
    rating_score INT,
    comment TEXT
);

-- Sample data for user_reviews table
INSERT INTO user_reviews (user_id_, order_transaction_id, rating_score, comment)
VALUES
    (1, 1, 5, 'Great coffee, fast delivery!'),
    (2, 2, 4, 'Good service, but the packaging could be improved.'),
    (3, 3, 5, 'Excellent quality and taste.'),
    (4, 4, 3, 'Decent experience, but the order was delayed.'),
    (5, 5, 4, 'I love their pastries!'),
    (6, 6, 2, 'Disappointed with the coffee, too bitter.'),
    (7, 7, 5, 'Best coffee shop in town!'),
    (8, 8, 4, 'Great selection of products.'),
    (9, 9, 3, 'Average experience, nothing special.'),
    (10, 10, 5, 'Awesome coffee and delivery service.');
