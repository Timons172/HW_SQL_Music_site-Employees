CREATE TABLE IF NOT EXISTS GenreOfMusic(
    Genre_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != '')
    );

CREATE TABLE IF NOT EXISTS Singer(
    Singer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != '')
    );

CREATE TABLE IF NOT EXISTS Album(
    Album_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != ''),
    YearOfRelease INTEGER CHECK (YearOfRelease >= 1889)
    );

CREATE TABLE IF NOT EXISTS Song(
    Song_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != ''),
    Duration INTEGER NOT NULL,
    CHECK (Duration > 0 AND Duration < 600),
    Album_ID INTEGER NOT NULL REFERENCES Album(Album_ID)
    );

CREATE TABLE IF NOT EXISTS Collection(
    Collection_ID SERIAL PRIMARY KEY,
    Name VARCHAR(60) NOT NULL CHECK(Name != ''),
    YearOfRelease INTEGER CHECK (YearOfRelease >= 1889)
    );

CREATE TABLE IF NOT EXISTS Genre_Singer(
    Genre_Singer_ID SERIAL PRIMARY KEY,
	Genre_ID INTEGER NOT NULL REFERENCES GenreOfMusic(Genre_ID),
	Singer_ID INTEGER NOT NULL REFERENCES Singer(Singer_ID)
);

CREATE TABLE IF NOT EXISTS Singer_Album(
    Singer_Album_ID SERIAL PRIMARY KEY,
    Singer_ID INTEGER NOT NULL REFERENCES Singer(Singer_ID),
	Album_ID INTEGER NOT NULL REFERENCES Album(Album_ID)
);

CREATE TABLE IF NOT EXISTS Collections(
    Collections_ID SERIAL PRIMARY KEY,
    Song_ID INTEGER NOT NULL REFERENCES Song(Song_ID),
    Collection_ID INTEGER NOT NULL REFERENCES Collection(Collection_ID)
);


