INSERT INTO airport (city, location_code) VALUES ('Lahore', 'LHR');
INSERT INTO airport (city, location_code) VALUES ('Islamabad', 'ISB');
INSERT INTO airport (city, location_code) VALUES ('Fort Worth', 'DFW');
INSERT INTO airport (city, location_code) VALUES ('Frankfurt', 'FRA');
INSERT INTO airport (city, location_code) VALUES ('Houston', 'IAH');
INSERT INTO airport (city, location_code) VALUES ('Louisville', 'SDF');
INSERT INTO airport (city, location_code) VALUES ('Karachi', 'KHI');
INSERT INTO airport (city, location_code) VALUES ('New York City', 'JFK');
INSERT INTO airport (city, location_code) VALUES ('San Francisco', 'SFO');
INSERT INTO airport (city, location_code) VALUES ('Tampa', 'TPA');

INSERT INTO airline (airline_id, airline_name) VALUES('AA','American Airlines');
INSERT INTO airline (airline_id, airline_name) VALUES('PA','Pakistan Airline');
INSERT INTO airline (airline_id, airline_name) VALUES('LH','Lufthansa');
INSERT INTO airline (airline_id, airline_name) VALUES('BA','British Airways');
INSERT INTO airline (airline_id, airline_name) VALUES('QR','Qatar Airways');
INSERT INTO airline (airline_id, airline_name) VALUES('9W','Jet Airways');
INSERT INTO airline (airline_id, airline_name) VALUES('EK','Emirates');
INSERT INTO airline (airline_id, airline_name) VALUES('EY','Etihad Airways');

INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('AA','SDF');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('AA','JFK');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('AA','IAH');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('AA','SFO');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('AA','TPA');

INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('PA','LHR');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('PA','DFW');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('PA','ISB');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('PA','KHI');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('PA','IAH');

INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('LH','KHI');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('LH','FRA');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('LH','JFK');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('LH','SFO');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('LH','DFW');

INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('BA','JFK');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('BA','KHI');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('BA','LHR');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('BA','FRA');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('BA','SFO');

INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('QR','KHI');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('QR','DFW');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('QR','JFK');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('QR','TPA');
INSERT INTO airportContainsAirline (airline_id, location_code) VALUES('QR','SDF');

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('AI2014','02:10:00','03:15:00','Karachi','Fort Worth','Connecting',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('QR2305','13:00:00','13:55:00','Karachi','Fort Worth','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('EY1234','19:20:00','20:05:00','New York City','Tampa','Connecting',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('LH9876','05:50:00','06:35:00','New York City','Karachi','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('BA1689','10:20:00','10:55:00','Frankfurt','Islamabad','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('AA4367','18:10:00','18:55:00','San Francisco','Frankfurt','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('QR1902','22:00:00','22:50:00','Lahore','Houston','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('BA3056','02:15:00','02:55:00','Karachi','Fort Worth','Connecting',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('EK3456','18:50:00','19:40:00','Karachi','San Francisco','Nonstop',0);

INSERT INTO flight (flight_id, arrival, departure, source, destination, route, count_ticket) 
VALUES('9W2334','23:00:00','13:45:00','Houston','Islamabad','Direct',0);