set serveroutput on

create table qualification
(qualification_id number constraint q1 primary key,
qualification_name varchar (100) constraint q2 unique,
flag number)

select * from qualification

create table technologies
(technology_id number constraint o1 primary key,
technology_name varchar (100) constraint o2 unique,
flag number)

select * from technologies

create table specializations
(specialization_id number constraint w1 primary key,
specialization_name varchar(100) constraint w2 unique,
flag number)

select * from specializations

create table fee_modes
(fee_mode_id number constraint f1 primary key,
fee_mode varchar (100) constraint f2 unique,
flag number)

select * from fee_modes

create table states 
(state_id number constraint s1 primary key,
state_name varchar(100) constraint s2 unique,
flag number)

select * from states

create table designations
(designation_id number constraint d1 primary key,
designation_name varchar (100) constraint d2 unique,
flag number)

select * from designations

create table cities
(city_id number constraint c1 primary key,
city_name varchar (100),
state_id number constraint ref3 references states (state_id),
flag number)

select * from cities

create table exam_levels
(level_id number constraint l1 primary key,
level_name varchar(100) constraint l2 unique,
flag number)

select * from exam_levels

create table locations
(location_id number constraint ll1 primary key,
location_name varchar (100) constraint ll2 unique,
city_id number constraint ref4 references cities(city_id),
flag number)

select * from locations

create table genders
(gender_id number constraint g1 primary key,
gender_name varchar(100) constraint g2 unique,
flag number)

select * from genders

create table lead_sources
(source_id number constraint ss1 primary key,
source_name varchar(100) constraint ss2 unique,
flag number)

select * from lead_sources

