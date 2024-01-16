CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate INT,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Groups (
    GroupID INT PRIMARY KEY,
    GroupName VARCHAR(255),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate INT,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    GroupID INT,
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

