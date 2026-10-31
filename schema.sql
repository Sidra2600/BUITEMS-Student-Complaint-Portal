CREATE DATABASE IF NOT EXISTS buitems_care CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE buitems_care;
CREATE TABLE IF NOT EXISTS users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(80) NOT NULL, email VARCHAR(190) NOT NULL UNIQUE, roll VARCHAR(80) NULL UNIQUE, password_hash VARCHAR(255) NOT NULL, role ENUM('student','staff','admin') NOT NULL, department VARCHAR(80) NOT NULL DEFAULT '');
CREATE TABLE IF NOT EXISTS categories (name VARCHAR(60) PRIMARY KEY);
INSERT IGNORE INTO categories VALUES ('Facilities'),('IT'),('Plumbing'),('Electrical'),('Hostel');
CREATE TABLE IF NOT EXISTS complaints (id VARCHAR(40) PRIMARY KEY, student INT NOT NULL, assigned INT NULL, created DATETIME NOT NULL, payload LONGTEXT NOT NULL, FOREIGN KEY(student) REFERENCES users(id), FOREIGN KEY(assigned) REFERENCES users(id), INDEX(student,created), INDEX(assigned));
CREATE TABLE IF NOT EXISTS feedback (complaint VARCHAR(40) PRIMARY KEY, student INT NOT NULL, action ENUM('Like','Unlike') NOT NULL, updated DATETIME NOT NULL, FOREIGN KEY(complaint) REFERENCES complaints(id), FOREIGN KEY(student) REFERENCES users(id));

-- BUITEMS directory update, 24 October 2026. Additive; retains existing data.
INSERT IGNORE INTO categories (name) VALUES
('Computer Engineering'),
('Electronic Engineering'),
('Electrical Engineering'),
('Software Engineering'),
('Telecommunication Engineering'),
('Computer Science'),
('Information Technology'),
('Civil Engineering'),
('Petroleum and Gas Engineering'),
('Mechanical Engineering'),
('Textile Engineering'),
('Fashion & Textile Design'),
('Chemical Engineering'),
('Mining Engineering'),
('Geological Engineering'),
('Architecture'),
('Chemistry'),
('Mathematics'),
('Physics'),
('Biotechnology'),
('Environmental Science'),
('Microbiology'),
('Management Sciences'),
('Economics'),
('Public Administration'),
('Education'),
('English'),
('Fine Arts'),
('International Relations'),
('Mass Communication'),
('Psychology'),
('Sociology');
