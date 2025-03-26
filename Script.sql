---yuberli


SELECT * FROM PERSONAS p ;
SELECT * FROM PERSONAL p ;
SELECT * FROM TIPO_DOCUMENTO td ;
SELECT * FROM ESTUDIANTES e ;
SELECT * FROM PROFESOR p ;

CREATE TABLE personal (
    id_personal NUMBER PRIMARY KEY,
    id_persona NUMBER UNIQUE,
    cargo VARCHAR2(100) NOT NULL,
    tipo_jornada VARCHAR2(50) NOT NULL,
    sueldo DECIMAL(10,2) NOT NULL,
    estado CHAR(20),
    fecha_inicio_contrato DATE,
    fecha_fin_contrato DATE,
    CONSTRAINT fk_personas_personal
    FOREIGN KEY (id_persona)
    REFERENCES personas(id_persona)
);


INSERT INTO personas (id_persona, id_tipo_documento, id_genero, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, celular, numero_documento, correo, estado)
VALUES (7, 1, 1, 'Juan', 'Pérez', 'Gómez', '12/12/2005', 987654321, 12345678, 'juanperez@example.com', '4');
INSERT INTO personas (id_persona, id_tipo_documento, id_genero, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, celular, numero_documento, correo, estado)
VALUES (8, 1, 2, 'María', 'Gómez', 'Fernández', '12/12/2005', 987123456, 87654321, 'mariagomez@example.com', '5');



INSERT INTO personal (id_personal, id_persona, cargo, tipo_jornada, sueldo, estado, fecha_inicio_contrato, fecha_fin_contrato)
VALUES (1, 7, 'Instructor', 'Tiempo Completo', 2500.00, '1', '12/11/2002', '12/11/2008');
INSERT INTO personal (id_personal, id_persona, cargo, tipo_jornada, sueldo, estado, fecha_inicio_contrato, fecha_fin_contrato)
VALUES (2, 8, 'limpieza', 'Parcial', 1800.00, '1', '12/11/2002', '12/11/2008');

SELECT * FROM personal;


ALTER TABLE ESTUDIANTES 
ADD CONSTRAINT fk_personas_estudiantes
FOREIGN KEY (id_persona)
REFERENCES personas(id_persona)