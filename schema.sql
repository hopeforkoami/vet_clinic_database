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

CREATE TABLE owners (
id serial primary key,
full_name varchar(255) not null,
age int not null
);

CREATE TABLE species (
id serial primary key,
name varchar(255) not null
);

alter table animals drop column species ;
ALTER TABLE animals ADD COLUMN species_id  int;
alter table animals add constraint fk_animal_species foreign key (species_id) references species(id);
ALTER TABLE animals ADD COLUMN owner_id  int;
alter table animals add constraint fk_animal_owner foreign key (owner_id) references owner(id);


CREATE TABLE vets (
id serial primary key,
name varchar(255) not null,
age int not null,
date_of_graduation date not null
);
CREATE TABLE specializations (
vets_id int references vets(id),
species_id int references species(id)
);
CREATE TABLE visits (
animals_id int references animals(id),
vets_id int references vets(id),
date_of_visit date
);

ALTER TABLE visits RENAME COLUMN animals_id to animal_id;
ALTER TABLE visits RENAME COLUMN vets_id to vet_id;

ALTER TABLE owners ADD COLUMN email VARCHAR(120);