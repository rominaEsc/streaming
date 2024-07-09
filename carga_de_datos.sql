<<<<<<< HEAD

USE streaming;

/* Creación de la tabla 'movies' */

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
    `id_movie` int NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `tagline` TEXT,
    `overview` TEXT,
    `id_collection` VARCHAR(255),
    `runtime` FLOAT,
    `release_date` DATE,
    `release_year` INT,
    `popularity` VARCHAR(255),
    `vote_average` int null,
    `vote_count` INT,
    `budget` BIGINT,
    `revenue` BIGINT,
    `return` FLOAT,
    PRIMARY KEY (`id_movie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/* Cargar datos en la tabla 'peliculas' */
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movies_df.csv'
INTO TABLE `movies`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(`id_movie`, `title`, `tagline`, `overview`, `id_collection`, `runtime`, `release_date`, `release_year`, `popularity`, `vote_average`, `vote_count`, `budget`, `revenue`, `return`);

SELECT * FROM `movies`;


-- ----------------------------------------------------

USE streaming;

/* Importación de la tabla 'generos' */

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
    `id_genre` int NOT NULL AUTO_INCREMENT,
    `name_genre` VARCHAR(128) NOT NULL,
    PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres_df.csv'
INTO TABLE `genres`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
=======
-- SELECT @@global.secure_file_priv

USE streaming;
/*Importacion de las tablas*/
DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  	`id_actor` 		varchar(128),
  	`actor_name` 			VARCHAR(128)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;	

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\actors_df.csv'  -- C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\actors_df
INTO TABLE `actors` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
>>>>>>> 791524f5a230d5d1881a6532686cc0bf298c079e
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

<<<<<<< HEAD
SELECT * FROM `generos`;

-- ---------------------------------------

/* Importación de la tabla 'movies_genres' */

DROP TABLE IF EXISTS `movies_genres`;
CREATE TABLE IF NOT EXISTS `movies_genres` (
    `id_peilicula` int NOT NULL,
    `id_genero` int NOT NULL,
    FOREIGN KEY (`id_movie`) REFERENCES `peliculas`(`id_movie`) ON DELETE CASCADE,
    FOREIGN KEY (`id_genre`) REFERENCES `generos`(`id_genre`) ON DELETE CASCADE,
    PRIMARY KEY (`id_movie`, `id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movies_genres_df.csv'
INTO TABLE `movies_genre`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
=======

SELECT * FROM actors;

-- directors

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  	`id_directors` 		int,
  	`name` 			VARCHAR(128)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;	

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\directors.csv'  -- C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\actors_df
INTO TABLE `directors` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
>>>>>>> 791524f5a230d5d1881a6532686cc0bf298c079e
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

<<<<<<< HEAD
SELECT * FROM `movies_genres`;
=======

SELECT * FROM directors;


>>>>>>> 791524f5a230d5d1881a6532686cc0bf298c079e