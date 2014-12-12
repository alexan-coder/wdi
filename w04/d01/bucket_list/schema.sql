DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS comments;

CREATE TABLE items (
	id SERIAL PRIMARY KEY,
	title varchar(100) NOT NULL,
	description varchar(100)
);

CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	body varchar(142) NOT NULL,
	item_id integer NOT NULL
);