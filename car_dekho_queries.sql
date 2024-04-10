SELECT * FROM cars.car_dekho;
use cars;
-- READ DATA --
select * from car_dekho;
-- Total Cars: To get a count of total records --
select count(*) from car_dekho;
-- The manager asked the empployee ,how many cars will be available in 2023
select count(*) from car_dekho where year=2023;
-- the manager asked , how many cars will be availavle in 2020,2021,2022--
select count(*) ,year from car_dekho where year in (2020,2021,2022)
group by year; 
-- client asked me to print total of all cars by year, i dont see all the details --
select year ,count(*) from car_dekho group by year;
-- Client asked to car dealer agent how many diesel cars will be there in 2020
select count(*) from car_dekho where year =2020 and fuel ="Diesel";

-- client requeted for the total of petrol cars in 2020 --
select count(*) from car_dekho where year =2020 and fuel = "Petrol";


-- the manager told the employee to a print all the fuel cars (petrol,diesel,CNG) come by all year --
SELECT fuel, year, COUNT(*) AS total_count
FROM car_dekho
GROUP BY fuel, year;

-- manager said there were more than 100 cars in a given year , list dwn those years --
select year , count(*) as c from car_dekho 
group by year 
having count(*)>100;

-- the manager said to the employee all cars count detail between 2015 and 2023, we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to the employee , All cars detail between 2015 adn 2023, we need complete lsit --
select * from car dekho where year between 2015 and 2023;
