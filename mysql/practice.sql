CREATE DATABASE ODONTOLOGIA;

USE ODONTOLOGIA;

CREATE TABLE PACIENTES(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	RG INT(9) NOT NULL,
	CPF INT(11) NOT NULL UNIQUE,
	NASCIMENTO DATE
);

SHOW TABLES;

mysql> DESC PACIENTES;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDPACIENTE | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50) | NO   |     | NULL    |                |
| RG         | int(9)      | NO   |     | NULL    |                |
| CPF        | int(11)     | NO   | UNI | NULL    |                |
| NASCIMENTO | date        | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+


ALTER TABLE PACIENTES
MODIFY NASCIMENTO DATE NOT NULL;

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDPACIENTE | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME       | varchar(50) | NO   |     | NULL    |                |
| RG         | int(9)      | NO   |     | NULL    |                |
| CPF        | int(11)     | NO   | UNI | NULL    |                |
| NASCIMENTO | date        | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

ALTER TABLE PACIENTES
MODIFY RG INT(9) NOT NULL UNIQUE;

ALTER TABLE PACIENTES
MODIFY CPF VARCHAR(15) NOT NULL UNIQUE;

INSERT INTO PACIENTES VALUES(NULL,'FLAVIO',111111111,33333333333,'1988-01-20');
INSERT INTO PACIENTES VALUES(NULL,'ANDRE',222222222,2143215871,'1978-05-10');
INSERT INTO PACIENTES VALUES(NULL,'GIOVANA',112345687,23465879400,'1958-03-05');
INSERT INTO PACIENTES VALUES(NULL,'KARLA',333333333,32465298623,'1994-03-18');
INSERT INTO PACIENTES VALUES(NULL,'DANIELE',444444444,11135678601,'1978-01-20');
INSERT INTO PACIENTES VALUES(NULL,'LORENA',555555555,23456782103,'1950-08-20');
INSERT INTO PACIENTES VALUES(NULL,'EDUARDO',666666778,23456782130,'1968-03-16');
INSERT INTO PACIENTES VALUES(NULL,'ANTONIO',999999999,35642864101,'1976-01-10');
INSERT INTO PACIENTES VALUES(NULL,'ANTONIO',555555174,53315686612,'1949-01-07');
INSERT INTO PACIENTES VALUES(NULL,'ELAINE',321564789,12435678942,'1963-03-06');
INSERT INTO PACIENTES VALUES(NULL,'CARMEM',146565789,32666534891,'1956-09-22');
INSERT INTO PACIENTES VALUES(NULL,'ADRIANA',482592178,23456815941,'1998-12-25');
INSERT INTO PACIENTES VALUES(NULL,'JOICE',324586321,23458442692,'1983-01-20');

mysql> SELECT * FROM PACIENTES;
+------------+---------+-----------+-------------+------------+
| IDPACIENTE | NOME    | RG        | CPF         | NASCIMENTO |
+------------+---------+-----------+-------------+------------+
|          1 | FLAVIO  | 111111111 | 33333333333 | 1988-01-20 |
|          2 | ANDRE   | 222222222 | 2143215871  | 1978-05-10 |
|          3 | GIOVANA | 112345687 | 23465879400 | 1958-03-05 |
|          4 | KARLA   | 333333333 | 32465298623 | 1994-03-18 |
|          5 | DANIELE | 444444444 | 11135678601 | 1978-01-20 |
|          6 | LORENA  | 555555555 | 23456782103 | 1950-08-20 |
|          7 | EDUARDO | 666666778 | 23456782130 | 1968-03-16 |
|          8 | ANTONIO | 999999999 | 35642864101 | 1976-01-10 |
|          9 | ANTONIO | 555555174 | 53315686612 | 1949-01-07 |
|         10 | ELAINE  | 321564789 | 12435678942 | 1963-03-06 |
|         11 | CARMEM  | 146565789 | 32666534891 | 1956-09-22 |
|         12 | ADRIANA | 482592178 | 23456815941 | 1998-12-25 |
|         13 | JOICE   | 324586321 | 23458442692 | 1983-01-20 |
+------------+---------+-----------+-------------+------------+

DROP TABLE PACIENTES;

CREATE TABLE PACIENTES(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50) NOT NULL,
	RG INT(9) NOT NULL UNIQUE,
	CPF VARCHAR(15) NOT NULL UNIQUE,
	NASCIMENTO DATE NOT NULL,
	SEXO CHAR(1) NOT NULL
);

INSERT INTO PACIENTES VALUES(NULL,'FLAVIO',111111111,33333333333,'1988-01-20','M');
INSERT INTO PACIENTES VALUES(NULL,'ANDRE',222222222,2143215871,'1978-05-10','M');
INSERT INTO PACIENTES VALUES(NULL,'GIOVANA',112345687,23465879400,'1958-03-05','F');
INSERT INTO PACIENTES VALUES(NULL,'KARLA',333333333,32465298623,'1994-03-18','F');
INSERT INTO PACIENTES VALUES(NULL,'DANIELE',444444444,11135678601,'1978-01-20','F');
INSERT INTO PACIENTES VALUES(NULL,'LORENA',555555555,23456782103,'1950-08-20','F');
INSERT INTO PACIENTES VALUES(NULL,'EDUARDO',666666778,23456782130,'1968-03-16','M');
INSERT INTO PACIENTES VALUES(NULL,'ANTONIO',999999999,35642864101,'1976-01-10','M');
INSERT INTO PACIENTES VALUES(NULL,'ANTONIO',555555174,53315686612,'1949-01-07','M');
INSERT INTO PACIENTES VALUES(NULL,'ELAINE',321564789,12435678942,'1963-03-06','F');
INSERT INTO PACIENTES VALUES(NULL,'CARMEM',146565789,32666534891,'1956-09-22','F');
INSERT INTO PACIENTES VALUES(NULL,'ADRIANA',482592178,23456815941,'1998-12-25','F');
INSERT INTO PACIENTES VALUES(NULL,'JOICE',324586321,23458442692,'1983-01-20','F');

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(50),
	BAIRRO VARCHAR(15),
	CIDADE VARCHAR(30),
	ESTADO VARCHAR(30),
	ID_PACIENTE INT,

	FOREIGN KEY(ID_PACIENTE)
	REFERENCES PACIENTES(IDPACIENTE)
);

