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

CREATE TABLE IF NOT EXISTS variations (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    category_id BIGINT REFERENCES product_categories(id),
    variation_type VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS variation_values(
    id BIGSERIAL PRIMARY KEY NOT NULL,
    variation_id BIGINT REFERENCES variations(id),
    variation_value VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS product_items_variation_values(
    product_item_id BIGINT REFERENCES product_items(id),
    variation_value_id BIGINT REFERENCES variation_values(id)
);









