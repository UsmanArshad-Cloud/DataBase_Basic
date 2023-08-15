CREATE TABLE Company (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    industry VARCHAR(50),
    headquarters_city VARCHAR(50)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    company_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    FOREIGN KEY (company_id) REFERENCES Company(id)
);
-- Insert Dummy Values for Company
INSERT INTO Company (id, name, industry, headquarters_city)
VALUES (1, 'TechCo', 'Technology', 'Silicon Valley');

-- Insert Dummy Values for Employees
INSERT INTO Employees (employee_id, company_id, first_name, last_name, position, salary)
VALUES (1, 1, 'John', 'Doe', 'Software Engineer', 90000.00);

INSERT INTO Employees (employee_id, company_id, first_name, last_name, position, salary)
VALUES (2, 1, 'Jane', 'Smith', 'Product Manager', 110000.00);

INSERT INTO Employees (employee_id, company_id, first_name, last_name, position, salary)
VALUES (3, 1, 'Michael', 'Johnson', 'Data Analyst', 75000.00);

