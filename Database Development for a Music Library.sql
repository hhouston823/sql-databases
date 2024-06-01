-- Create the Genre table
CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Create the Artists table
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
);

-- Create the Albums table
CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Alter table
ALTER TABLE Albums
ADD duration INT;

-- Add foreign key constraint for 'artist_id'
ALTER TABLE Albums
ADD CONSTRAINT fk_artist
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id);

-- Add foreign key constraint for 'genre_id'
ALTER TABLE Albums
ADD CONSTRAINT fk_genre
FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);
