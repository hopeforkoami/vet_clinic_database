select * from animals where name like '%mon';
select name from animals where date_of_birth between '2016-01-01' and '2019-12-31';
select name from animals where neutered = true and escape_attempts < 3;
select date_of_birth from animals where name = 'Agumon' or name = 'Pikachu';
select name, escape_attempts from animals where weight_kg >10.5;
select * from animals where neutered = true ;
select * from animals where name != 'Gabumon';
select * from animals where weight_kg >=10.4 and weight_kg <=17.3;


begin;
update animals set species = 'unspecified' ;
rollback;

begin ; 
UPDATE animals SET species = 'digimon' WHERE name like '%mon' ;
UPDATE animals SET species = 'pokemon' WHERE name not like '%mon' ;
commit ; 
select * from animals;

begin;
delete from animals ; 
rollback ; 
select * from animals ; 

begin ; 
delete from animals where date_of_birth > '2022-01-01';
savepoint first_save_point ;
update animals set weight_kg = weight_kg * (-1) ;
rollback to savepoint first_save_point;
update animals set weight_kg = weight_kg * (-1) where weight_kg <0 ;
commit ; 

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, MAX(escape_attempts) FROM animals GROUP BY neutered;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) from animals WHERE date_of_birth BETWEEN '1990-01-01' and '2000-01-01' GROUP BY species;

SELECT name FROM animals JOIN owners ON owners.full_name = 'Melody Pond' AND owners.id = animals.owner_id;
SELECT animals.name FROM animals JOIN species ON species.name = 'Pokemon' AND animals.species_id = species.id;
SELECT owners.full_name, animals.name FROM owners LEFT JOIN animals ON owners.id=animals.owner_id ORDER BY full_name;
SELECT species.name, COUNT(animals.name) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.id;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.species_id = species.id
  WHERE species.name='Digimon' AND owners.full_name='Jennifer Orwell' ORDER BY animals.name;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id
  WHERE owners.full_name='Dean Winchester' AND escape_attempts=0;
SELECT owners.full_name, COUNT(animals.name) FROM animals JOIN owners ON animals.owner_id = owners.id
  GROUP BY owners.full_name ORDER BY COUNT DESC LIMIT 1;
