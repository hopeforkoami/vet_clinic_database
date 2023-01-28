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