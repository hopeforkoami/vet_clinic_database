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


SELECT vets.name, animals.name, date_of_visit FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id
  WHERE vets.name = 'William Tatcher'ORDER BY date_of_visit DESC LIMIT 1;

SELECT vets.name, COUNT(animals.name) FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id
  WHERE vets.name = 'Stephanie Mendez' GROUP BY vets.name;

SELECT vets.name, species.name FROM vets
  LEFT JOIN specializations ON vets.id = vets_id LEFT JOIN species ON species.id = species_id
  ORDER BY vets.name;

SELECT vets.name, animals.name, date_of_visit FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id
  WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30'
  ORDER BY animals.name;

SELECT animals.name, COUNT(animals.name) FROM visits
  JOIN animals ON animals.id = animals_id GROUP BY animals.name
  ORDER BY COUNT(animals.name) DESC LIMIT 1;

SELECT animals.name, date_of_visit FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id
  WHERE vets.name = 'Maisy Smith' ORDER BY date_of_visit ASC LIMIT 1;

SELECT * FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id
  ORDER BY date_of_visit DESC LIMIT 1;

SELECT COUNT(*) FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id JOIN specializations ON specializations.vets_id = vets.id
  WHERE specializations.species_id != animals.species_id;

SELECT species.name FROM visits
  JOIN animals ON animals.id = animals_id JOIN vets ON vets.id = vets_id JOIN species ON species.id = species_id
  WHERE vets.name = 'Maisy Smith' GROUP BY species.name ORDER BY COUNT(species.name) DESC LIMIT 1;



explain analyse SELECT COUNT(*) FROM visits where animal_id = 4;
explain analyse SELECT * FROM visits where vet_id = 2;
explain analyse SELECT * FROM owners where email = 'owner_18327@mail.com';
