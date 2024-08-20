CREATE SCHEMA cars;

USE cars ;

/* Query-1
Read Data */
SELECT * FROM car_dekho ;

/* Query-2
Total Cars : To get a count of total records */
SELECT COUNT(*) FROM car_dekho ;

/* Query-3 
The Manager asked the Employee "How many cars will be available in 2023 ? */
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2023 ;

/* Query-4
The Manager asked the Employee "How many cars is available in 2020,2021,2022 ? */
SELECT COUNT(*) FROM car_dekho
WHERE year = 2020 OR year = 2021 OR year = 2022 ;

/* Query-5
The Client asked me to print the total of all cars by year. I don't see all the details. */
SELECT year, COUNT(*) FROM car_dekho
GROUP BY year ;

/* Query-6
Client asked to car dealer agent "How many diesel cars are avaliable in year 2020? */
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2020 AND fuel = "Diesel" ;

/* Query-7
Client Requested a car dealer agent "How many petrol cars are available in year 2020? */
SELECT COUNT(*) FROM car_dekho
WHERE year = 2020 AND fuel = "Petrol" ;

/* Query-8
The manager told the employee to print all the fuel cars (petrol, diesel, CNG) for all years. */
SELECT year, COUNT(*) FROM car_dekho 
WHERE fuel = "Petrol"
GROUP BY year ;

SELECT year, COUNT(*) FROM car_dekho 
WHERE fuel = "Diesel"
GROUP BY year ;

SELECT year, COUNT(*) FROM car_dekho 
WHERE fuel = "CNG"
GROUP BY year ;

/* Query-9 
The manager asked which year had more than 100 cars, as there were more than 100 cars in a given year. */
SELECT year, COUNT(*) FROM car_dekho 
GROUP BY year 
HAVING COUNT(*) > 100 ;

/* Query-10
The manager asked the employee for the count details of all cars between 2015 and 2023; we need a complete list. */
SELECT COUNT(*) FROM car_dekho 
WHERE year BETWEEN 2015 AND 2023 ;

/* Query-11
The manager asked the employee for all car details between 2018 and 2023; we need a complete list. */
SELECT * FROM car_dekho
WHERE year BETWEEN 2018 AND 2023 ;



	
	
