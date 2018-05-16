--CRIAR BASE COM O NOME DE geart
	--OBS: em AGRUPAMENTO colocar -> utf8_general_ci

CREATE TABLE `geart`.`usuario` ( `id` INT NOT NULL AUTO_INCREMENT , `nome` VARCHAR(100) NOT NULL , 
	`email` VARCHAR(100) NOT NULL , `senha` VARCHAR(32) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO `usuario`(`nome`, `email`, `senha`) VALUES ('GEART -2018', 'geart2018@gmail.com', MD5('geart'));

CREATE TABLE `geart`.`arduino` ( `cod_arduino` INT NOT NULL AUTO_INCREMENT , `ip` VARCHAR(15) NOT NULL , PRIMARY KEY (`cod_arduino`)) ENGINE = InnoDB;

CREATE TABLE `geart`.`usuario_arduino`(
    `cod_usuario_arduino` INT NOT NULL AUTO_INCREMENT,
    `cod_usuario` INT NOT NULL REFERENCES `geart`.`usuario`(`cod_usuario`),
    `cod_arduino` INT NOT NULL REFERENCES `geart`.`arduino`(`cod_arduino`),
    `potencia` FLOAT(10,2),
    `corrente` FLOAT(10,2),
    PRIMARY KEY (`cod_usuario_arduino`)
) ENGINE = InnoDB;

INSERT INTO `arduino`(`ip`) VALUES ('192.168.0.100');

INSERT INTO `usuario_arduino`( `cod_usuario`, `cod_arduino`, `potencia`, `corrente`) 
VALUES (1, 1, '', '');