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
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


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
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


SELECT * FROM directors;


