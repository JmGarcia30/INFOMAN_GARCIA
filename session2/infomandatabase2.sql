show databases;
create database music_db;

use music_db;

create table Artist(
	artist_id INT NOT NULL auto_increment,
    artist_name VARCHAR(100),
    contact_number VARCHAR(100),
    birth_date DATE,
    email VARCHAR(100),
    age INT,
    PRIMARY KEY(artist_id)
);

create table Song(
	song_id INT NOT NULL auto_increment,
    artist_id INT,
    song_title VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(100),
    release_date DATE,
    album_id INT,
    PRIMARY KEY(song_id),
    FOREIGN KEY(artist_id) REFERENCES Artist (artist_id),
    FOREIGN KEY(album_id) REFERENCES Album (album_id)
);

create table Album(
album_id INT NOT NULL auto_increment,
artist_id INT,
album_name VARCHAR(100),
year_released DATE,
number_of_songs INT,
PRIMARY KEY(album_id),
FOREIGN KEY(artist_id) REFERENCES Artist (artist_id)
);

show tables;
desc Artist;
desc Song;
desc Album;
