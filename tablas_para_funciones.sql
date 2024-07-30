USE streaming;
SET lc_time_names = 'es_ES';

-- CREATE TABLE estrenos_por_mes AS
SELECT 
    MONTH(release_date) AS mes_de_estreno_num,  
    MONTHNAME(release_date) AS mes_de_estreno_nombre, 
    COUNT(*) AS cant_de_estrenos
FROM 
    movies
GROUP BY 
    MONTH(release_date), 
    MONTHNAME(release_date)
ORDER BY 
    mes_de_estreno_num;
    
-- CREATE TABLE estrenos_por_dia AS
SELECT 
	-- DAY(release_date) AS dia_de_estreno_num,
	DAYNAME(release_date) AS dia_de_estreno_nombre, 
    COUNT(*) AS cant_de_estrenos
FROM 
    movies
 GROUP BY
    dia_de_estreno_nombre;
   -- dia_de_estreno_num;
-- ORDER BY 
	-- dia_de_estreno_num;