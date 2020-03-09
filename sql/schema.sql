CREATE DATABASE book_reviews;

\c book_reviews

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    avatar VARCHAR, 
    password VARCHAR
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    pagecount INT NOT NULL,
    cover VARCHAR NOT NULL
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (id),
    book_id INT REFERENCES books (id),
    review VARCHAR NOT NULL, 
    stars INT NOT NULL
);