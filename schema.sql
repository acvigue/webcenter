DROP TABLE IF EXISTS patterns;
CREATE TABLE IF NOT EXISTS patterns (
    uuid TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    date TEXT NOT NULL,
    popularity INTEGER NOT NULL,
    creator TEXT NOT NULL
);

DROP TABLE IF EXISTS playlists;
CREATE TABLE IF NOT EXISTS playlists (
    uuid TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    patterns TEXT NOT NULL,
    featured_pattern TEXT NOT NULL,
    date TEXT NOT NULL
);

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    uuid TEXT PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN NOT NULL,
    is_active BOOLEAN NOT NULL
);