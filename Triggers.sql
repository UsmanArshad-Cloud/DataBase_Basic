-- Create the main_table
CREATE TABLE main_table (
    id INT PRIMARY KEY,
    people_name VARCHAR(50)
);

-- Insert dummy data into main_table
INSERT INTO main_table (id, people_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Create the backup_table
CREATE TABLE backup_table (
    id INT,
    people_name VARCHAR(50)
);
DELIMITER //
CREATE TRIGGER save_data
BEFORE DELETE ON main_table
FOR EACH ROW
BEGIN
    INSERT INTO backup_table(id, people_name)
    VALUES(OLD.id, OLD.people_name);
END;
//
DELIMITER ;

