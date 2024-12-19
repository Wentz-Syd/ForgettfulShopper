BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS pantry;
DROP TABLE IF EXISTS item;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY, --forgot to mark as PK for EVERY PK
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(200) NOT NULL
);

CREATE TABLE pantry (
    pantry_id SERIAL PRIMARY KEY,
    pantry_owner_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (pantry_owner_id) REFERENCES users (user_id)
);

CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    pantry_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    type VARCHAR(50) NULL,
    description TEXT NULL,
    FOREIGN KEY (pantry_id) REFERENCES pantry(pantry_id)
);

COMMIT TRANSACTION;
