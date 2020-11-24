//Novo Bando de Dados Teste
CREATE DATABASE `teste` /*!40100 COLLATE 'utf8_general_ci' */

// Criação da Tabela Pais
CREATE TABLE `pais` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome_pais` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_general_ci';

SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='teste';

//Inserindo Dados a Tabela Pais
INSERT INTO `teste`.`pais` (`nome_pais`) VALUES ('Brasil'),('Estados Unidos'),('Canadá'),('Argentina');
 
//Alterando a tabela pais para inserir a coluna Sigla
ALTER TABLE `pais`
	ADD COLUMN `sigla` VARCHAR(2) NULL DEFAULT NULL AFTER `nome_pais`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='teste';

//Criando a Tabela Estado
CREATE TABLE `estado` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome_estado` VARCHAR(50) NULL DEFAULT '',
	`id_pais` INT NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	CONSTRAINT `fk_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`)
)
COLLATE='utf8mb4_general_ci';

SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='teste';

//Inserindo dados a tabela Estado
INSERT INTO `teste`.`estado` (`nome_estado`) VALUES ('Rio Grande Do Sul'),('Santa Catarina'),('Paraná'),('Texas'),('Flórida'),('Califórnia'),
('Ontário'),('Quebec'),('Manitoba'),('Córdova'),('Chaco'),('San Luis'),;


CREATE TABLE `cidade` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome_cidade` VARCHAR(50) NULL DEFAULT NULL,
	`id_estado` INT NULL,
	PRIMARY KEY (`id`),
	INDEX `id_estado` (`id_estado`),
	CONSTRAINT `FK__estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id`)
)
COLLATE='utf8mb4_general_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='barber';
