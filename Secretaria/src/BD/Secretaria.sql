-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-06-12 15:33:21.764

-- tables
-- Table: Diferidos
CREATE TABLE Diferidos (
    DUE varchar(7) NOT NULL,
    Motivo_diferido varchar(100) NOT NULL,
    Constancia varchar(2) NOT NULL,
    Materia varchar(20) NOT NULL,
    Docente varchar(20) NOT NULL,
    Fecha_entrega date NOT NULL,
    Fecha_Respuesta date NOT NULL,
    CONSTRAINT Diferidos_pk PRIMARY KEY (DUE)
);

-- Table: Prestamos_de_equipo
CREATE TABLE Prestamos_de_equipo (
    DUE varchar(7) NOT NULL,
    Materia varchar(20) NOT NULL,
    Docente varchar(20) NOT NULL,
    Estado_entrega varchar(20) NOT NULL,
    Estado_recibido varchar(20) NOT NULL,
    Fecha_entrega date NOT NULL,
    Fecha_Recibido date NOT NULL,
    CONSTRAINT Prestamos_de_equipo_pk PRIMARY KEY (DUE)
);

-- Table: Registros
CREATE TABLE Registros (
    Id_Registrotri int NOT NULL AUTO_INCREMENT,
    Due varchar(7) NOT NULL,
    Nombre varchar(20) NOT NULL,
    Tipo_Registro varchar(20) NOT NULL,
    Usuario varchar(10) NOT NULL,
    CONSTRAINT Reistros_pk PRIMARY KEY (Id_Registrotri,Due)
);

-- Table: Salidas_tecnicas
CREATE TABLE Salidas_tecnicas (
    DUE varchar(7) NOT NULL,
    Lista_Estudiantes char(2) NOT NULL,
    Lugar_devisita varchar(20) NOT NULL,
    Presupuesto decimal(10,10) NOT NULL,
    Materia varchar(20) NOT NULL,
    Encargado varchar(20) NOT NULL,
    Fecha_entrega date NOT NULL,
    Fecha_Respuesta date NOT NULL,
    CONSTRAINT Salidas_tecnicas_pk PRIMARY KEY (DUE)
);

-- Table: Usuario
CREATE TABLE Usuario (
    Nombre varchar(10) NOT NULL DEFAULT Usuario,
    Password varchar(10) NULL DEFAULT root,
    CONSTRAINT Usuario_pk PRIMARY KEY (Nombre)
);

-- foreign keys
-- Reference: Diferidos_fk0 (table: Registros)
ALTER TABLE Registros ADD CONSTRAINT Diferidos_fk0 FOREIGN KEY Diferidos_fk0 (Due)
    REFERENCES Diferidos (DUE);

-- Reference: Registros_Prestamos_de_equipo (table: Registros)
ALTER TABLE Registros ADD CONSTRAINT Registros_Prestamos_de_equipo FOREIGN KEY Registros_Prestamos_de_equipo (Due)
    REFERENCES Prestamos_de_equipo (DUE);

-- Reference: Registros_Usuario (table: Registros)
ALTER TABLE Registros ADD CONSTRAINT Registros_Usuario FOREIGN KEY Registros_Usuario (Usuario)
    REFERENCES Usuario (Nombre);

-- Reference: Salidas_tecnicas_fk0 (table: Registros)
ALTER TABLE Registros ADD CONSTRAINT Salidas_tecnicas_fk0 FOREIGN KEY Salidas_tecnicas_fk0 (Due)
    REFERENCES Salidas_tecnicas (DUE);

-- End of file.

