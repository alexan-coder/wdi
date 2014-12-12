DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS growls;

CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username varchar(100) NOT NULL
);

CREATE TABLE growls (
	id SERIAL PRIMARY KEY,
	body varchar(142) NOT NULL,
	user_id integer NOT NULL
);