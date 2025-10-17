create database HMChospital;
use HMChospital;

create  table patients(
Patients_ID int primary key,
Patient_name varchar(100),
Age int,
Gender enum("M" , "F"),
AdmissionDate date);

Alter - add column
alter table patients
add DoctorAssigned varchar(50);

Alter - Modify column
alter table patients
Modify Patient_name varchar(100);

Rename - Table
rename table patients to Patients_Info;

truncate table Patients_Info;

drop table Patients_Info;





