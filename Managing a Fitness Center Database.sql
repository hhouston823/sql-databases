CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: SQL Data Insertion
INSERT INTO Members (id, name, age) VALUES
(1, 'Jane Doe', 28),
(2, 'John Smith', 35),
(3, 'Alice Johnson', 24),
(4, 'Bob Brown', 40);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2024-06-01', 'Morning', 'Yoga'),
(2, 2, '2024-06-01', 'Afternoon', 'Weightlifting'),
(3, 3, '2024-06-02', 'Evening', 'Cardio'),
(4, 4, '2024-06-02', 'Morning', 'Swimming');

-- Task 2: SQL Data Update
UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Doe');

-- Task 3: SQL Data Deletion
DELETE FROM WorkoutSessions
WHERE member_id = (SELECT id FROM Members WHERE name = 'John Smith');

DELETE FROM Members
WHERE name = 'John Smith';