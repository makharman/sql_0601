
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    ReleaseYear INT,
    Genre VARCHAR(50)
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate INT
);


CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate INT
);


CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);


CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    MovieID INT,
    ActorID INT,
    RoleName VARCHAR(100),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);


CREATE TABLE Directing (
    DirectingID INT PRIMARY KEY,
    MovieID INT,
    DirectorID INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

CREATE TABLE MovieGenreMap (
    MovieID INT,
    GenreID INT,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
