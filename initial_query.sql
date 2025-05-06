-- 1. Create 'users' table
CREATE TABLE users (
    uname VARCHAR(20) NOT NULL,
    passwd VARCHAR(255) NOT NULL,
    pno VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    DOB DATE NOT NULL,
    phone_no VARCHAR(15) NOT NULL,
    address VARCHAR(50),
    PRIMARY KEY(uname)
);

-- 2. Create 'flight' table
CREATE TABLE flight (
    flight_id VARCHAR(10) NOT NULL,
    arrival TIME,
    departure TIME,
    source VARCHAR(15) NOT NULL,
    destination VARCHAR(15) NOT NULL,
    route VARCHAR(10),
    model VARCHAR(15),
    manufacturer VARCHAR(15),
    count_ticket INT,
    PRIMARY KEY(flight_id)
);

-- 3. Create 'ticket' table
CREATE TABLE ticket (
    ticket_id VARCHAR(10) NOT NULL,
    uname VARCHAR(20),
    flight_id VARCHAR(10),
    status VARCHAR(10),
    price DECIMAL(10,2),
    PRIMARY KEY(ticket_id),
    FOREIGN KEY (uname) REFERENCES users(uname) ON DELETE SET NULL,
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id) ON DELETE CASCADE
);

-- 4. Create 'booking' table
CREATE TABLE booking (
    ticket_id VARCHAR(10),  -- allow NULL
    flight_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE SET NULL,
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id) ON DELETE CASCADE
);


-- 5. Create 'airline' table
CREATE TABLE airline (
    airline_id VARCHAR(10) NOT NULL,
    airline_name VARCHAR(20),
    PRIMARY KEY(airline_id)
);

-- 6. Create 'flightScheduledForAirline' table
CREATE TABLE flightScheduledForAirline (
    airline_id VARCHAR(10),
    flight_id VARCHAR(10),
    FOREIGN KEY (airline_id) REFERENCES airline(airline_id) ON DELETE CASCADE,
    FOREIGN KEY (flight_id) REFERENCES flight(flight_id) ON DELETE SET NULL
);

-- 7. Create 'airport' table
CREATE TABLE airport (
    location_code VARCHAR(4) NOT NULL,
    city VARCHAR(15) NOT NULL,
    PRIMARY KEY(location_code)
);

-- 8. Create 'airportContainsAirline' table
CREATE TABLE airportContainsAirline (
    airline_id VARCHAR(10),
    location_code VARCHAR(4),
    FOREIGN KEY (airline_id) REFERENCES airline(airline_id) ON DELETE CASCADE,
    FOREIGN KEY (location_code) REFERENCES airport(location_code) ON DELETE CASCADE
);

-- ✅ 9. Create 'userMakesPayment' table last
CREATE TABLE userMakesPayment (
    uname VARCHAR(20),
    ticket_id VARCHAR(10),
    PRIMARY KEY (uname, ticket_id),
    FOREIGN KEY (uname) REFERENCES users(uname) ON DELETE CASCADE,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE
);

