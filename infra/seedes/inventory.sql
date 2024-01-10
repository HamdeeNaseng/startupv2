CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    quantity INTEGER,
    price DECIMAL(10, 2),
    manufacture_date DATE,
    supplier_name VARCHAR(255)
);

INSERT INTO inventory (product_name, quantity, price, manufacture_date, supplier_name)
VALUES
    ('Laptop', 10, 1200.00, '2023-01-15', 'Tech Supplier Inc'),
    ('Smartphone', 20, 500.50, '2023-02-20', 'Mobile Gadgets Ltd'),
    ('Printer', 5, 300.75, '2023-03-10', 'Office Supplies Co'),
    ('Headphones', 30, 50.25, '2023-04-05', 'Audio Tech Solutions'),
    ('Camera', 8, 800.00, '2023-05-12', 'Photography World');