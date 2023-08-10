
-- Drop the table if it already exists
IF OBJECT_ID('StudentRegistrations', 'U') IS NOT NULL
    DROP TABLE StudentRegistrations


-- Create the database
IF DB_ID('OurExercise2Db') IS NOT NULL
    DROP DATABASE OurExercise2Db


CREATE DATABASE OurExercise3Db
ON PRIMARY (
    NAME = OurExercise3Db,
    FILENAME = 'D:\Simplilearn\SQL\Assessments\Assign-1\OurExercise3Db.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON (
    NAME = OurExercise3DbLog,
    FILENAME = 'D:\Simplilearn\SQL\Assessments\Assign-1\OurExercise3Db.ldf',
    SIZE = 8MB,
    FILEGROWTH = 10%
)

USE OurExercise3Db


-- Create the table
CREATE TABLE StudentRegistrations (
    StudentId INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    CONSTRAINT PK_StudentRegistrations PRIMARY KEY (StudentId, CourseCode)
)


-- Insert example values
INSERT INTO StudentRegistrations (StudentId, CourseCode, RegistrationDate)
VALUES (101, 'BIO101', '10/08/2023'),
       (202, 'MATH202', '10/08/2023'),
       (303, 'PHYSI303', '10/08/2023')

SELECT * FROM StudentRegistrations