-- CRIAR UM NOVO BD
CREATE DATABASE GREENHOUSE;

-- UTILIZANDO O BD
USE GREENHOUSE;

-- CRIANDO TABELA 
CREATE TABLE `GREENHOUSE`.`PLANTS` (
	`PLANT_NAME` CHAR(30) NOT NULL,
    `SENSOR_VALUE` FLOAT DEFAULT NULL,
    `SENSOR_EVENT` TIMESTAMP NOT NULL
		DEFAULT CURRENT_TIMESTAMP ON
        UPDATE CURRENT_TIMESTAMP,
	`SENSOR_LEVEL` CHAR(5) DEFAULT NULL,
    PRIMARY KEY `PK_PLANT_NAME` (`PLANT_NAME`)
);

-- COMANDOR DE INSERÇÃO DE DADOS 
INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Orquidea', 10, 'HIGH');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Samanbaia', 11, 'LOW');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Babosa', 9, 'LOW');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Palmeira', 15, 'HIGH');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Coqueiro', 20, 'HIGH');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Pinheiro', 25, 'HIGH');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Canhamo', 420, 'HIGH');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Girassol', 2, 'LOW');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Violeta', 666, 'MED');

INSERT INTO `GREENHOUSE`.`PLANTS`
(`PLANT_NAME`,`SENSOR_VALUE`,`SENSOR_LEVEL`)
VALUES('Mandioca', 51, 'LOW');

-- EXECUTANDO COMANDOS DQL - SELECT
-- CONSULTANDO TUDO DA TABELA
SELECT * FROM `GREENHOUSE`.`PLANTS`;

SELECT `PLANT_NAME`,`SENSOR_EVENT`
FROM `GREENHOUSE`.`PLANTS`;

-- APLICAR FILTROS NOS REGISTROS DE DADOS
SELECT *
FROM PLANTS
WHERE SENSOR_LEVEL = 'HIGH'
AND SENSOR_VALUE >= 10 AND SENSOR_VALUE <= 20;

SELECT *
FROM PLANTS
WHERE SENSOR_LEVEL IN ('HIGH', 'LOW');

-- CLAUSULA DE ORDENAÇÃO
SELECT *
FROM PLANTS
WHERE SENSOR_VALUE < 420
ORDER BY SENSOR_VALUE DESC;

-- FUNÇÕES DE AGRUPAMENTO
SELECT COUNT(*), SENSOR_LEVEL
FROM PLANTS
GROUP BY SENSOR_LEVEL;

-- TOP
SELECT *
FROM PLANTS
LIMIT 5;

-- MIN MAX
SELECT MAX(SENSOR_VALUE), MIN(SENSOR_VALUE)
FROM PLANTS;

-- COUNT
SELECT COUNT(*)
FROM PLANTS 
WHERE SENSOR_VALUE >= 5;

-- SUM
SELECT SUM(SENSOR_VALUE)
FROM PLANTS
WHERE SENSOR_VALUE > 100;

-- AVG
SELECT AVG(SENSOR_VALUE)
FROM PLANTS
WHERE SENSOR_VALUE > 50;

-- LIKE
SELECT *
FROM PLANTS
WHERE PLANT_NAME LIKE '%A%';

-- COMANDO UPDATE PARA ATUALIZAR REGISTROS DE DADOS
SELECT *
FROM PLANTS;

UPDATE PLANTS
SET SENSOR_VALUE = 90, SENSOR_LEVEL = 'HIGH'
WHERE PLANT_NAME = 'Babosa';

-- APAGANDO REGISTROS DA TABELA DO BANCO DE DADOS
DELETE FROM PLANTS
WHERE PLANT_NAME = 'Coqueiro';
