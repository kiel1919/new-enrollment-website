CREATE DATABASE student_enrollment;
USE student_enrollment;

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='users' AND xtype='U')
BEGIN
    CREATE TABLE users (
        id INT IDENTITY(1,1) PRIMARY KEY,
        username VARCHAR(50) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL
    );
END

-- Sample user
INSERT INTO users (username, password) VALUES ('testuser', 'hashed_password_here');

-- Create students table if it does not exist
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='students' AND xtype='U')
BEGIN
    CREATE TABLE students (
        student_id INT IDENTITY(1,1) PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,
        enrollment_date DATE NOT NULL DEFAULT GETDATE()
    );
END