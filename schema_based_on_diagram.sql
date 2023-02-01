CREATE TABLE patients (
id serial primary key,
name varchar(255) not null,
date_of_birth int not null
);
CREATE TABLE treatments (
id serial primary key,
type varchar(255) not null,
name varchar(255) not null
);
CREATE TABLE medical_histories (
id serial primary key,
admitted_at date not null,
statut varchar(50) not null,
patient_id int references patients(id)
);
CREATE TABLE medical_history_treatments (
id serial primary key,
medical_history_id int references medical_histories(id),
treatment_id int references treatments(id)
);
CREATE TABLE invoices (
id serial primary key,
total_amount numeric(12,2),
generated_at date not null,
payed_at date,
medical_history_id int references medical_histories(id)
);
CREATE TABLE invoice_items (
id serial primary key,
unit_price numeric(12,2),
quantity int not null,
total_price numeric(12,2),
invoice_id int references invoices(id),
treatment_id int references treatments(id)
);