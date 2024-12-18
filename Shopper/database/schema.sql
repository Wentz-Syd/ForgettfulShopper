BEGIN TRANSACTION;

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS beer;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE brewery (
    brewery_id SERIAL,
	user_id int NOT NULL,
	name varchar(100) NOT NULL UNIQUE,
	description text NOT NULL,
	address varchar(100) NOT NULL,
	city varchar(50) NOT NULL,
	state varchar(50) NOT NULL,
	zipcode int NOT NULL,
	img varchar(20000) NULL,
	CONSTRAINT PK_brewery PRIMARY KEY (brewery_id),
	CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE beer (
    beer_id SERIAL,
    brewery_id int NOT NULL,
    name varchar(50) NOT NULL,
    beer_type varchar(50) NOT NULL,
    description text NOT NULL,
    abv NUMERIC(4, 2) NOT NULL,
    img varchar(20000) NOT NULL,
    CONSTRAINT PK_beer PRIMARY KEY (beer_id),
    CONSTRAINT FK_brewery FOREIGN KEY (brewery_id) REFERENCES brewery (brewery_id)
);

CREATE TABLE reviews (
    review_id SERIAL,
    beer_id int NOT NULL,
    rating int NOT NULL,
    review text NOT NULL,
    user_id int NOT NULL,
    CONSTRAINT PK_review PRIMARY KEY (review_id),
    CONSTRAINT FK_beer_id FOREIGN KEY (beer_id) REFERENCES beer (beer_id),
    CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

COMMIT TRANSACTION;
