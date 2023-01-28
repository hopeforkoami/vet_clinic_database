insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Agumon', '2020-02-03', 0, true, 12.23);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Gabumon', '2018-11-15', 2, true, 8);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Pikachu', '2021-01-07', 1, false, 15.04);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Devimon', '2017-05-12', 5, true, 11);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Charmander', '2020-02-08', 0, false, -11);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Plantmon', '2021-11-15', 2, true, -5.7);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Squirtle', '1993-04-02', 3, false, -12.13);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Angemon', '2015-06-12', 1, true, -45);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Boarmon', '2005-06-07', 7, true, 20.4);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Blossom', '1998-10-13', 3, true, 17);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values
('Ditto', '2022-05-14', 4, true, 22);

insert into owners (full_name, age) values ('Sam Smith',34),
('Jennifer Orwell',19),
('Bob', 45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

insert into species (name) values ('Pokemon'),('Digimon');

update animals set species_id = (select id from species where name='Digimon') where name like '%mon';
update animals set species_id = (select id from species where name='Pokemon') where name not like '%mon';

update animals set owner_id = (select id from owners where full_name = 'Sam Smith') where name = 'Agumon';
update animals set owner_id = (select id from owners where full_name = 'Jennifer Orwell') where name = 'Gabumon' or name = 'Pikachu';
update animals set owner_id = (select id from owners where full_name = 'Bob') where name = 'Devimon' or name = 'Plantmon';
update animals set owner_id = (select id from owners where full_name = 'Melody Pond') where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';
update animals set owner_id = (select id from owners where full_name = 'Dean Winchester') where name = 'Angemon' or name = 'Boarmon' ;

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
       ('Maisy Smith', 26, '2019-01-17'),
       ('Stephanie Mendez', 64, '1981-05-04'),
       ('Jack Harkness', 38, '2008-06-08');

       
INSERT INTO specializations (vets_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Digimon')),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM species WHERE name = 'Digimon'));


INSERT INTO visits (vets_id, animals_id, date_of_visit)
VALUES ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Agumon'), '2020-05-24'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Agumon'), '2020-07-22'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Gabumon'), '2021-02-02'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-01-05'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-03-08'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Pikachu'), '2020-05-14'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Devimon'), '2021-05-04'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Charmander'), '2021-02-24'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2019-12-21'),
       ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2020-08-10'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Plantmon'), '2021-04-07'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Squirtle'), '2019-09-29'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-10-03'),
       ((SELECT id FROM vets WHERE name = 'Jack Harkness'), (SELECT id FROM animals WHERE name = 'Angemon'), '2020-11-04'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-01-24'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2019-05-15'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-02-27'),
       ((SELECT id FROM vets WHERE name = 'Maisy Smith'), (SELECT id FROM animals WHERE name = 'Boarmon'), '2020-08-03'),
       ((SELECT id FROM vets WHERE name = 'Stephanie Mendez'), (SELECT id FROM animals WHERE name = 'Blossom'), '2020-05-24'),
       ((SELECT id FROM vets WHERE name = 'William Tatcher'), (SELECT id FROM animals WHERE name = 'Blossom'), '2021-01-11');