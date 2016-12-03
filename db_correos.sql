PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE USUARIO(    correo TEXT NOT NULL,	contra TEXT NOT NULL,	apellidoPatU TEXT NOT NULL,	apellidoMatU TEXT,    nombresU TEXT NOT NULL,	PRIMARY KEY(correo));
INSERT INTO "USUARIO" VALUES('q','q','Rodriguez','Bocanegra','Juan Daniel');
CREATE TABLE CONTACTO(	contacto_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,	email TEXT NOT NULL,	registra TEXT NOT NULL,	apellidoPatC TEXT NOT NULL,	apellidoMatC TEXT,	nombresC TEXT NOT NULL,	FOREIGN KEY(registra) REFERENCES USUARIO ( correo )    );
INSERT INTO "CONTACTO" VALUES(4,'ana@gmail.com','q','Robles','SA','ANA');
INSERT INTO "CONTACTO" VALUES(6,'oscar@gmail.com','q','Guzman',NULL,'Oscar');
CREATE TABLE CORREO(	correo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,	fecha NUMERIC NOT NULL,	hora NUMERIC NOT NULL,	de TEXT NOT NULL,	para TEXT NOT NULL,	texto TEXT,	asunto TEXT,	adjunto TEXT,    eliminado BOOLEAN NOT NULL,	FOREIGN KEY(`de`) REFERENCES USUARIO ( correo ));
CREATE TABLE CORREO_E(	correo_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,	fecha NUMERIC NOT NULL,	hora NUMERIC NOT NULL,	de TEXT NOT NULL,	para TEXT NOT NULL,	texto TEXT,	asunto TEXT,	adjunto TEXT,    eliminado BOOLEAN NOT NULL,	FOREIGN KEY(`de`) REFERENCES USUARIO ( correo ));
INSERT INTO "CORREO_E" VALUES(1,'02/12/2016','19:03:52','q','ana@gmail.com','Hola','Saludo',NULL,1);
INSERT INTO "CORREO_E" VALUES(2,'02/12/2016','19:04:09','q','oscar@gmail.com','la la la la 
	...',NULL,NULL,1);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('CONTACTO',6);
INSERT INTO "sqlite_sequence" VALUES('CORREO',5);
INSERT INTO "sqlite_sequence" VALUES('CORREO_E',2);
COMMIT;
