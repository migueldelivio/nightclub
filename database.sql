CREATE TABLE logins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO logins (username, password, email) VALUES ('admin', '12345', 'admin@admin.com');

CREATE TABLE publicacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    author_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES logins(id)
);

INSERT INTO publicacoes (title, content, author_id) VALUES ('Teste', 'Testetesteteste', 1);

CREATE TABLE anuncios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    seller_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (seller_id) REFERENCES logins(id)
);

INSERT INTO anuncios (title, description, price, seller_id) VALUES ('Atenção', 'teste', 99.99, 1);
