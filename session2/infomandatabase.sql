show databases;
create database Library;

use Library;

create table Author(
	author_id INT NOT NULL auto_increment,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number INT,
    email VARCHAR(100),
    PRIMARY KEY(author_id)
);

create table Book(
	book_id INT NOT NULL auto_increment,
    author_id INT,
    genre VARCHAR(100),
    book_title VARCHAR(100),
    date_published DATE,
    publisher_id INT,
    PRIMARY KEY(book_id),
    FOREIGN KEY(author_id) REFERENCES Author (author_id),
    FOREIGN KEY(publisher_id) REFERENCES Publisher (publisher_id)
);

create table Publisher(
publisher_id INT NOT NULL auto_increment,
publisher_name VARCHAR(100),
publisher_address VARCHAR(100),
year_published DATE,
book_title VARCHAR(200),
PRIMARY KEY(publisher_id)
);

show tables;
desc Author;
desc Book;
desc Publisher;