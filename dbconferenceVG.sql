CREATE DATABASE dbConferenceVG;
USE dbconferenceVG;
CREATE TABLE PARTICIPANTE(
    IDPAR INT AUTO_INCREMENT,
	FECREGPAR DATE,
	NOMPAR VARCHAR(60),
    APEPAR VARCHAR(60),
    DNIPAR char(8),
    TIPPAR CHAR(1),
    CELPAR CHAR(9),
    EMAPAR VARCHAR(90),
    DIRPAR VARCHAR(90),
    ESTPAR CHAR (1),
    CONSTRAINT IDPAR PRIMARY KEY(IDPAR)
    );
    
CREATE TABLE PONENTE(   
CODPON CHAR(5),
NOMPON VARCHAR(60),
APEPON VARCHAR (80),
CELPON CHAR(9),
DNIPON CHAR(9),
EMAPON VARCHAR(90),
DIRPON VARCHAR(90),
CONSTRAINT CODPON PRIMARY KEY(CODPON)
);
    
    
CREATE TABLE CONFERENCIA(
	CODCONF CHAR(5) ,
    TEMCONF VARCHAR(90),
    FECCONF DATE,
    PONCONF CHAR(5),
    CONSTRAINT CODCONF PRIMARY KEY(CODCONF)
    );


CREATE TABLE REGISTRO(
CODREG CHAR(5),
CODPAR INT,
FECREG DATE,
CERTREG CHAR(1),
CONSTRAINT CODREG PRIMARY KEY(CODREG)
);

CREATE TABLE REGISTRO_DETALLE (

IDREGDET INT AUTO_INCREMENT,
CODREG CHAR (5), 
CODCONF CHAR(5),
CANTPART INT,
CONSTRAINT IDREGDET PRIMARY KEY (IDREGDET)
); 

INSERT INTO PARTICIPANTE
(NOMPAR,APEPAR,DNIPAR,TIPPAR,CELPAR,EMAPAR,DIRPAR,ESTPAR)
VALUES
('JUAN','CAMPOS PEREZ','40255133','1','986512478','juan.campos@vallegrande.edu.pe','av.Miraflores','A'),
('SOFIA','SOLANO AVILA','64978531','1','974815258','sofia.solano@vallegrande.edu.pe','Jr.Huallaga','A'),
('Maria','Rosales Guerra','15925874','1','986532147','Maria.rosales@vallegrande.edu.pe','Calle Girasoles','A'),
('Marcos','Alarcon Hermosa','48781512','2','','Marcos.alarcon@vallegrande.edu.pe','','A'),
('Martín','Samán Arata','84152631','2','','martin.saman@vallegrande.edu.pe','Jr.La Union','A'),
('José','Quispe luyo','48161937','2','978415321','jose.quispe@vallegrande.edu.pe','Calle Abancay','A'),
('Claudia','Barraza Carrasco','78452596','3','','cbarraza@gmail.com','Jr.Las gardenias','A'),
('Jhoana','Bendezú Anccasi','74321564','3','','jbendezu@yahoo.com','','A'),
('Mario','Acosta Palomino','15326499','3','931764521','marlo.acosta@outlook.com','av.Miraflores','A');

SELECT * FROM PARTICIPANTE;

INSERT INTO PONENTE
(CODPON,NOMPON,APEPON,CELPON,DNIPON,EMAPON,DIRPON)
VALUES
('P0001','Alberto','Corrales Lozada','','15263798','alberto.corrales@yahoo.com','Calle los Portales'),
('P0002','Juana','Sanchez Ortega','974815258','13256497','juana.sachez@outlook.com','Av. La Libertad'),
('P0003','Javier','Nakasone Vila','995236147','15933575','Javier.nakasone@gmail.com','Jr.San Martin'),
('P0005','Fabiano','Carrion Avila','','12233647','','Jr. Huancayo');

SELECT * FROM PONENTE;

INSERT INTO CONFERENCIA
(CODCONF,TEMPONF,FECCONF,PONCONF)
VALUES
('C0001','Gestión de datos con MySQL','15/7/2022','P0001'),
('C0002','Joins paso a paso','16/7/2022','P0002'),
('C0003','Consultas con parámetros','17/7/2022','P0003'),
('C0004','Administracion base de datos MySQL','16/7/2022','P0002'),
('C0005','Gestión de backups de base de datos','15/7/2022','P0004');

SELECT * FROM CONFERENCIA;













