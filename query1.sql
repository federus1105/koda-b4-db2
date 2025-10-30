CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(12) NOT NULL
);

CREATE TABLE payment_method (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE category_payment (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    id_users INT NOT NULL,
    id_payment_method INT NOT NULL,
    id_category_payment INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAP,
    price VARCHAR(20) NOT NULL,
    description VARCHAR(20),
    FOREIGN KEY (id_users) REFERENCES users(id)
    FOREIGN KEY (id_payment_method) REFERENCES payment_method(id)
    FOREIGN KEY (id_category_payment) REFERENCES category_payment(id)
);

