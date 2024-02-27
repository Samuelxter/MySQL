SHOW DATABASES;

USE bwuyuah9no0japy742v9

/* Crear conjunto de datos */
CREATE TABLE estudiantes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    correo VARCHAR(150),
    fecha_nacimiento DATE
);

/* Eliminar */
/* DROP TABLE estudiantes; */

/* Mostrar información */
SELECT * FROM estudiantes;

/* Añadir datos */
INSERT INTO estudiantes (nombre, apellidos, correo, fecha_nacimiento)
    VALUES('test', 'test apellido', 'test@gmail.com', '2003-02-13');

/* -------------------------------------------------------------------- */

/* -------------------------------------------------------------------- */