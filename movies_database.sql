CREATE TABLE IF NOT EXISTS movies(
      movies_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    director_id INTEGER UNSIGNED ,
    category_id INTEGER UNSIGNED ,
    rating_average INTEGER UNSIGNED NOT NULL DEFAULT 0,
    title VARCHAR(100) NOT NULL  ,
    synopsis TEXT ,
    img_url VARCHAR(500) ,
    year INTEGER UNSIGNED NOT NULL DEFAULT 1990
    );
-------------------

CREATE TABLE IF NOT EXISTS ratings(
    valoration_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    `user_id` INTEGER UNSIGNED,
    movies_id INTEGER UNSIGNED, 
    valoration INTEGER UNSIGNED DEFAULT 0
);


-------

CREATE TABLE IF NOT EXISTS directors(
    director_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
    `name` VARCHAR(100),
    last_name VARCHAR(250)
);
---------
CREATE TABLE IF NOT EXISTS users(
    `user_id` INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR (100) ,
    last_name VARCHAR(250) ,
    birthday DATETIME
);
----------

-- CREATE TABLE IF NOT EXISTS categories(
--     category_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
--     category VARCHAR(100)
-- );

-----------------------------------------------------------------------------------------
-----------------------------------------VARIAS------------------------------------------
--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT-
-----------------------------------------------------------------------------------------




