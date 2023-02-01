CREATE TABLE patients (
id serial primary key,
name varchar(255) not null,
date_of_birth int not null
);
CREATE TABLE treatments (
id serial primary key,
type varchar(255) not null,
name varchar(255) not null,
);