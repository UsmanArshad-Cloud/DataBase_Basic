USE PEOPLE_DB;
-- Create Users Table
CREATE TABLE Users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100)
);

-- Create Addresses Table
CREATE TABLE Addresses (
    address_id INT PRIMARY KEY,
    user_id INT,
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Insert Dummy Values
INSERT INTO Users (id, username, email)
VALUES (1, 'john_doe', 'john@example.com');

INSERT INTO Addresses (address_id, user_id, street, city, state, zip_code)
VALUES (1, 1, '123 Main St', 'Springfield', 'IL', '12345');
