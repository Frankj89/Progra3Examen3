CREATE DATABASE BD_Francisco 
GO
USE BD_Francisco 
GO

CREATE TABLE ENCUESTAS 
(
	EncuestaID int identity,
	Nombre varchar (50),
	EdadNacimiento varchar (30),
	CorreoElectronico varchar(30),
	CONSTRAINT PK_idencuesta PRIMARY KEY(EncuestaID)
)
GO

CREATE TABLE PARTIDOS
(
	PartidoID int identity,
	Nombre varchar (30),
	idencuesta INT CONSTRAINT fk_idencuesta FOREIGN KEY (idencuesta) REFERENCES ENCUESTAS  (EncuestaID)

)

CREATE PROCEDURE AGREGARENCUESTA
@NOMBRE VARCHAR(50),
@EDADNACIMIENTO VARCHAR(30),
@CORREOELECTRONICO VARCHAR(30)
AS 
BEGIN
INSERT INTO ENCUESTAS (NOMBRE, EDADNACIMIENTO, CORREOELECTRONICO) VALUES (@NOMBRE, @EDADNACIMIENTO, @CORREOELECTRONICO)
END


 CREATE PROCEDURE REPORTEGENERAL
AS
BEGIN

SELECT ENCUESTAS.EncuestaID, ENCUESTAS.Nombre, ENCUESTAS.EdadNacimiento, ENCUESTAS.CorreoElectronico,PARTIDOS.Nombre
From ENCUESTAS
INNER JOIN PARTIDOS ON ENCUESTAS.EncuestaID = PARTIDOS.idencuesta

END

