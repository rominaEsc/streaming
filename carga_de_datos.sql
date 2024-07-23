
USE streaming;

/* Creación de la tabla 'movies' */

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
    `id_movie` int NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `tagline` TEXT,
    `overview` TEXT,
    `id_collection` VARCHAR(255),
    `runtime` FLOAT NULL,
    `release_date` DATE,
    `release_year` INT,
    `popularity` VARCHAR(255),
    `vote_average` int,
    `vote_count` int,
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

/* Importación de la tabla 'generos' */

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
    `id_genre` int NOT NULL,
    `name_genre` VARCHAR(128) NOT NULL,
    PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\genres_df.csv'
INTO TABLE `genres`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM `genres`;

-- ---------------------------------------

/* Importación de la tabla 'movies_genres' */

DROP TABLE IF EXISTS `movies_genres`;
CREATE TABLE IF NOT EXISTS `movies_genres` (
    `id_movie` int NOT NULL,
    `id_genre` int NOT NULL,
    FOREIGN KEY (`id_genre`) REFERENCES `genres`(`id_genre`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\movies_genres_df.csv'
INTO TABLE `movies_genres`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM `movies_genres`;