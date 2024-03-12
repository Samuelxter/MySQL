-- Crear la tabla students
CREATE TABLE students (
    idStudent INT PRIMARY KEY,
    nameStudent VARCHAR(45) NOT NULL
);

-- Insertar 10 students
INSERT INTO students (idStudent, nameStudent) VALUES
(1, 'student1'),
(2, 'student2'),
(3, 'student3'),
(4, 'student4'),
(5, 'student5'),
(6, 'student6'),
(7, 'student7'),
(8, 'student8'),
(9, 'student9'),
(10, 'student10');

-- Crear la tabla subjects
CREATE TABLE subjects (
    idSubject INT PRIMARY KEY,
    nameStudentSubject VARCHAR(50) NOT NULL
);

-- Insertar 10 subjects
INSERT INTO subjects (idSubject, nameStudentSubject) VALUES
(1, 'Subject1'),
(2, 'Subject2'),
(3, 'Subject3'),
(4, 'Subject4'),
(5, 'Subject5'),
(6, 'Subject6'),
(7, 'Subject7'),
(8, 'Subject8'),
(9, 'Subject9'),
(10, 'Subject10');

-- Crear la tabla grades
CREATE TABLE grades (
    idStudent INT,
    idSubject INT,
    grade DECIMAL(4,2),
    
    PRIMARY KEY (idStudent, idSubject),
    FOREIGN KEY (idStudent) REFERENCES students(idStudent),
    FOREIGN KEY (idSubject) REFERENCES subjects(idSubject)
);

-- Insertar grades de ejemplo (cada student tiene al menos 3 subjects)
INSERT INTO grades (idStudent, idSubject, grade) VALUES
(1, 1, 8.5),
(1, 2, 7.0),
(1, 3, 9.2),
-- ... (repite para otros students y subjects)