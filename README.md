# Proyecto streaming

1. Elección de la base de datos a utilizar.
   Nos fueron provistas tres bases de datos:
     movies_dataset.csv
     movies_dataset.xlsx
     movies_dataset(1).xlsx
   En el archivo "1_seleccion_de_base_de_datos_movies.ipynb" se comparan los tres data sets y se justifica la elección de "movies_dataset.csv" como base de datos a utilizar en el proyecto.

2. Modelar la Base de Datos
   
Primero, necesitamos identificar las entidades y sus atributos.

Entidades y Atributos Ejemplo:

(completar.. Ejemplo:
  Película: id, título, año, duración, id_director, id_genero
  Director: id, nombre, fecha_nacimiento
  Actor: id, nombre, fecha_nacimiento
  Género: id, nombre
  Película_Actor: id_película, id_actor (tabla intermedia para relación muchos a muchos))
  

2. Crear Tablas en Python
Vamos a crear un script en Python para definir estas tablas. Tratar datos faltantes, nulos,... etc.

3. Cargar Datos en MySQL
Crearemos las tablas y cargaremos los datos en MySQL.

4. Diagrama de Entidad-Relación
Usaremos MySQL Workbench para visualizar el diagrama de entidad-relación (ERD) de nuestra base de datos.

5. Consultas SQL
Ejecutaremos consultas SQL para explorar y analizar los datos.
 (Completar con las preguntas que deseamo responder)

7. Desplegar la API
Completar...

8. Dashboard en Power BI
Conéctaremos la base de datos MySQL desde Power BI y crearemos visualizaciones interactivas para mostrar los insights encontrados.

Este README proporciona una guía completa para iniciar, configurar y utilizar tu proyecto. Asegúrate de ajustar los detalles específicos de tu proyecto según sea necesario.





