USE test;

CREATE TABLE sampletable (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    date_of_birth DATE
);
