/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
	id serial primary key,
	name varchar(100) not null,
	date_of_birth date not null,
	escape_attempts integer default 0,
	neutered boolean default false,
	weight_kg numeric(12,2)
);


ALTER TABLE animals ADD COLUMN species  varchar(100);

