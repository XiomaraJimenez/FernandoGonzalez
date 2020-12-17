#create database
CREATE DATABASE 203444FernandoGonzalezDB;
#use database
USE 203444FernandoGonzalezDB;

#create tables 
CREATE TABLE Student (academicprogress
	studentID int NOT NULL AUTO_INCREMENT,
	FirstName varchar(255) Not NULL,
	LastName varchar(255) NOT NULL,
    	Birthdate varchar(40),
    	Contacts varchar(40),
	Password varchar(20),
    	PRIMARY KEY (studentID)
);
ALTER TABLE Student ADD Password VARCHAR (20);

# Set increment starts at 1000
ALTER TABLE Student AUTO_INCREMENT=1000;

CREATE TABLE Faculty (
	facultyID int NOT NULL AUTO_INCREMENT,
	FirstName varchar(255) Not NULL,
	LastName varchar(255) NOT NULL,
    	Birthdate varchar(40),
    	Contacts varchar(40),
	Password varchar(20),
    	PRIMARY KEY (facultyID)
);
# Set increment starts at 2000
ALTER TABLE Faculty AUTO_INCREMENT=2000;

CREATE TABLE Exam(
	StudentID int(4) NOT NULL,
	Date varchar(12),
	Status varchar(12),
	Grade double(100, 5),
	CourseID int(4),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
);
CREATE TABLE Assignment(
	StudentID int(4) NOT NULL,
	Date varchar(12),
	Status varchar(12),
	GradeResult double(100, 5),
	CourseID int(4),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE
);

CREATE TABLE Course(
	CourseID int NOT NULL AUTO_INCREMENT,
	CourseTitle varchar(10) Not NULL,
	Room varchar(10),
	FacultyID int(4),
	PRIMARY KEY (CourseID)
);
# Set increment starts at 3000
ALTER TABLE Course AUTO_INCREMENT=3000;


show tables;

SELECT * FROM student;
insert into student values (20344,"Fernando","Gonzalez","22-01-1988",0831789872,"fernando");




