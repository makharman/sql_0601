
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    BirthDate DATE,
    Nationality VARCHAR(50)
);


CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    Genre VARCHAR(50),
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);


CREATE TABLE Readers (
    ReaderID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);


CREATE TABLE Checkouts (
    CheckoutID INT PRIMARY KEY,
    BookID INT,
    ReaderID INT,
    CheckoutDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (ReaderID) REFERENCES Readers(ReaderID)
);
