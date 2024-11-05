CREATE TABLE flights
(
    filight_id INT PRIMARY KEY  NOT NULL,
    flight_number VARCHAR(10),
    aircraft_id	INT NOT NULL ,
    departure_airport INT,
    arrival_airport INT,
    duration TIME
);