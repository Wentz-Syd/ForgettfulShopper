BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS pantry;
DROP TABLE IF EXISTS item;

CREATE TABLE users(
    user_id SERIAL,
    username varchar(50) NOT NULL UNIQUE,
    password_hash varchar(200) NOT NULL,
    CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE pantry(
    pantry_id SERIAL,
    pantry_owner_id int NOT NULL,
    name NOT NULL,
    description text NOT NULL,
    CONSTRAINT PK_pantry PRIMARY KEY (pantry_id)
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE item(
    item_id SERIAL,
    pantry_id int NOT NULL,
    name varchar(50) NOT NULL,
    status varchar(50) NOT NULL,
    type varchar(50) NULL,
    description text NULL,
    CONSTRAINT PK_item PRIMARY KEY (item_id)
    CONSTRAINT FK_pantry_id FOREIGN KEY (pantry_id) REFERENCES pantry (pantry_id)
);

COMMIT TRANSACTION;