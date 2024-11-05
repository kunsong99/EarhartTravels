CREATE TABLE flights
(
    flight_id INT PRIMARY KEY  NOT NULL,
    flight_number VARCHAR(10),
    aircraft_id	INT NOT NULL ,
    departure_airport INT,
    arrival_airport INT,
    duration TIME
);

CREATE TABLE airports
(
    airport_id	INT PRIMARY KEY NOT NULL ,
    airport_code	VARCHAR(10),	--IATA or ICAO code of the airport
    name	VARCHAR(100),
    city	VARCHAR(50)	,
    country	VARCHAR(50)
    );

CREATE TABLE schedules
(
schedule_id	INT PRIMARY KEY NOT NULL,
flight_id	INT REFERENCES flights(flight_id) ON DELETE NO ACTION,
departure_date DATE,
departure_time TIME,
arrival_date DATE,
arrival_time TIME,
status	VARCHAR(10) --ENUM (On Time, Delayed, Canceled)	Status of the flight
);

