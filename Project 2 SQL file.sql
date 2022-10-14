--Drop all tables
DROP TABLE country;
DROP TABLE us_male_bmistats;
DROP TABLE us_female_bmistats;
DROP TABLE niger_male_bmistats;
DROP TABLE niger_female_bmistats;
DROP TABLE congo_male_bmistats;
DROP TABLE congo_female_bmistats;
DROP TABLE car_male_bmistats;
DROP TABLE car_female_bmistats;


--country and name
CREATE TABLE country (
	id serial PRIMARY key,
	Country_Name VARCHAR(30) NOT NULL
);

--Insert value
INSERT INTO country (Country_Name) 
VALUES ('United States'), ('Central African Republic'), ('Congo'), ('Niger');
SELECT * FROM country;

--US Male BMI & Weight Status Table
CREATE TABLE us_male_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES country(id),
	primary key (countryid, year)
);



--US Female BMI & Weight Status Table
CREATE TABLE us_female_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES country(id)
);


--Niger Male BMI & Weight Status Table
CREATE TABLE niger_male_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES country(id)
);



--Niger Female BMI & Weight Status Table
CREATE TABLE niger_female_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL);



--Congo male BMI & Weight Status Table
CREATE TABLE congo_male_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL);



--Congo Female BMI & Weight Status Table
CREATE TABLE congo_female_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL);



--Car male BMI & Weight Status Table
CREATE TABLE car_male_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL);


--Car female BMI & Weight Status Table
CREATE TABLE car_female_bmistats (
	CountryID integer not null,
	Year int NOT NULL,
	Mean_BMI float NOT NULL,
	Weight_Status varchar(30) NOT NULL);

--Check Table
SELECT * FROM country;
Select * FROM car_female_bmistats;
Select * FROM car_male_bmistats;
Select * FROM congo_female_bmistats;
Select * FROM congo_male_bmistats;
Select * FROM niger_female_bmistats;
Select * FROM niger_male_bmistats;
Select * FROM us_female_bmistats;
Select * FROM us_male_bmistats;

--Male BMIstats
Select * FROM car_male_bmistats
UNION
Select * FROM congo_male_bmistats
UNION
Select * FROM niger_male_bmistats
UNION
Select * FROM us_male_bmistats
ORDER BY countryid, year ASC;

--Female BMIstats
Select * FROM car_female_bmistats
UNION
Select * FROM congo_female_bmistats
UNION
Select * FROM niger_female_bmistats
UNION
Select * FROM us_female_bmistats
ORDER BY countryid, year ASC;
