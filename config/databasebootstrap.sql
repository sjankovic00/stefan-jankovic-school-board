CREATE DATABASE school_board;
ALTER DATABASE school_board CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
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

ALTER TABLE students CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER TABLE grades CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO students (name) VALUES 
('James Smith'), 
('Olivia Johnson'), 
('Ethan Brown'), 
('Sophia Williams'), 
('Michael Jones'), 
('Emma Miller'), 
('Daniel Davis'), 
('Mia Wilson'), 
('Alexander Moore'), 
('Charlotte Taylor'), 
('Benjamin Anderson'), 
('Amelia Thomas'), 
('Lucas Jackson'), 
('Isabella White'), 
('Henry Harris'), 
('Harper Martin'), 
('Samuel Thompson'), 
('Victoria Lee'), 
('Jack Walker'), 
('Avery Hall');

INSERT INTO grades (student_id, grade) VALUES
(1, 7), (1, 8), (1, 6), (1, 9),      
(2, 5), (2, 8), (2, 6), (2, 7),      
(3, 9), (3, 8), (3, 7),              
(4, 4), (4, 6), (4, 7), (4, 5),      
(5, 10), (5, 9),                     
(6, 6), (6, 8), (6, 5),              
(7, 9), (7, 6), (7, 7),              
(8, 4), (8, 10),                     
(9, 7), (9, 5), (9, 8), (9, 9),      
(10, 8), (10, 10),                   
(11, 8), (11, 9), (11, 10),          
(12, 6), (12, 7), (12, 8),           
(13, 5), (13, 7), (13, 6), (13, 8),  
(14, 8), (14, 8), (14, 7),           
(15, 10), (15, 9),                   
(16, 9), (16, 8), (16, 6),           
(17, 5), (17, 9), (17, 10),          
(18, 6), (18, 9), (18, 8),           
(19, 10), (19, 10),                  
(20, 8), (20, 9);                    