CREATE DATABASE school_board;
USE school_board;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE grades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    grade FLOAT,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (name) VALUES 
('Ana Petrović'), -- CSM
('Marko Jovanović'), -- CSM
('Miloš Nikolić'), -- CSM
('Jovana Stojanović'), -- CSM
('Luka Đorđević'), -- CSM
('Ivana Popović'), -- CSMB
('Stefan Ilić'), -- CSMB
('Nikola Savić'), -- CSMB
('Mina Petrović'), -- CSMB
('Maja Jovanović'), -- CSMB
('Petar Marić'), -- CSM
('Marija Lazić'), -- CSM
('Milica Vuković'), -- CSM
('Aleksandar Živković'), -- CSM
('Jelena Pavlović'), -- CSM
('Nenad Obradović'), -- CSMB
('Tamara Todorović'), -- CSMB
('Vladimir Kostić'), -- CSMB
('Dragana Miljković'), -- CSMB
('Jasmina Ristić'); -- CSMB

INSERT INTO grades (student_id, grade) VALUES
(1, 7), (1, 8), (1, 6), (1, 9),      -- Ana Petrović (CSM)
(2, 5), (2, 8), (2, 6), (2, 7),      -- Marko Jovanović (CSM)
(3, 9), (3, 8), (3, 7),              -- Miloš Nikolić (CSM)
(4, 4), (4, 6), (4, 7), (4, 5),      -- Jovana Stojanović (CSM)
(5, 10), (5, 9),                     -- Luka Đorđević (CSM)
(6, 6), (6, 8), (6, 5),              -- Ivana Popović (CSMB)
(7, 9), (7, 6), (7, 7),              -- Stefan Ilić (CSMB)
(8, 4), (8, 10),                     -- Nikola Savić (CSMB)
(9, 7), (9, 5), (9, 8), (9, 9),      -- Mina Petrović (CSMB)
(10, 8), (10, 10),                   -- Maja Jovanović (CSMB)
(11, 8), (11, 9), (11, 10),          -- Petar Marić (CSM)
(12, 6), (12, 7), (12, 8),           -- Marija Lazić (CSM)
(13, 5), (13, 7), (13, 6), (13, 8),  -- Milica Vuković (CSM)
(14, 8), (14, 8), (14, 7),           -- Aleksandar Živković (CSM)
(15, 10), (15, 9),                   -- Jelena Pavlović (CSM)
(16, 9), (16, 8), (16, 6),           -- Nenad Obradović (CSMB)
(17, 5), (17, 9), (17, 10),          -- Tamara Todorović (CSMB)
(18, 6), (18, 9), (18, 8),           -- Vladimir Kostić (CSMB)
(19, 10), (19, 10),                  -- Dragana Miljković (CSMB)
(20, 8), (20, 9);                   -- Jasmina Ristić (CSMB)