CREATE TABLE IF NOT EXISTS delivery_drivers (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    contact_number VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address_id BIGINT REFERENCES addresses(id)
);

CREATE TABLE IF NOT EXISTS drivers_license (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    delivery_driver_id BIGINT REFERENCES delivery_drivers(id),
    license_number VARCHAR(100) NOT NULL,
    license_expiration_date DATE NOT NULL,
    license_category VARCHAR(100) 
);

CREATE TABLE IF NOT EXISTS vehicle_information (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    delivery_driver_id BIGINT REFERENCES delivery_drivers(id),
    vehicle_make VARCHAR(100) NOT NULL,
    vehicle_model VARCHAR(100) NOT NULL,
    vehicle_plate VARCHAR(100) NOT NULL
);

-- Populate the delivery_drivers table with Spanish names
INSERT INTO delivery_drivers (first_name, middle_name, last_name, email, contact_number, birthday, gender, address_id)
VALUES
    ('Carlos', 'José', 'González', 'carlos.gonzalez@example.com', '+1234567890', '1990-05-15', 'Masculino', 16),
    ('Ana', 'María', 'López', 'ana.lopez@example.com', '+9876543210', '1985-08-22', 'Femenino', 17),
    ('Javier', 'Luis', 'Martínez', 'javier.martinez@example.com', '+1112233445', '1992-03-10', 'Masculino', 18),
    ('Elena', 'Isabel', 'Rodríguez', 'elena.rodriguez@example.com', '+5556667777', '1988-12-05', 'Femenino', 19),
    ('Miguel', 'Ángel', 'Sánchez', 'miguel.sanchez@example.com', '+9998887777', '1995-06-20', 'Masculino', 20);

-- Generate new addresses
INSERT INTO addresses (house_number, street_name, barangay, city, postal_code, region_id)
VALUES
    ('123', 'Main Street', 'Downtown', 'Cityville', '12345', 1),
    ('456', 'Park Avenue', 'Greenfield', 'Suburbia', '54321', 2),
    ('789', 'Oak Road', 'Hillside', 'Townsville', '98765', 3),
    ('101', 'Cedar Lane', 'Beachside', 'Seaview', '54321', 4),
    ('202', 'Maple Street', 'Riverside', 'River City', '13579', 5);

INSERT INTO vehicle_information (delivery_driver_id, vehicle_make, vehicle_model, vehicle_plate)
VALUES
    (1, 'Toyota', 'Camry', 'ABC 123'),
    (2, 'Honda', 'Civic', 'XYZ 789'),
    (3, 'Ford', 'F-150', 'DEF 456'),
    (4, 'Chevrolet', 'Malibu', 'GHI 789'),
    (5, 'Nissan', 'Altima', 'JKL 012');











