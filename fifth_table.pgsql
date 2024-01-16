
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    ArtistName VARCHAR(100),
    Country VARCHAR(50),
    BirthDate DATE
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

CREATE TABLE Albums (
    AlbumID INT PRIMARY KEY,
    AlbumTitle VARCHAR(255),
    ReleaseYear INT,
    ArtistID INT,
    GenreID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE Tracks (
    TrackID INT PRIMARY KEY,
    TrackTitle VARCHAR(255),
    Duration INT, 
    AlbumID INT,
    FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);
