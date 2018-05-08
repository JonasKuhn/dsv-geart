--CRIAR BASE COM O NOME DE geart
	--OBS: em AGRUPAMENTO colocar -> utf8_general_ci

CREATE TABLE `geart`.`usuario` ( `id` INT NOT NULL AUTO_INCREMENT , `nome` VARCHAR(100) NOT NULL , 
	`email` VARCHAR(100) NOT NULL , `senha` VARCHAR(32) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

INSERT INTO `usuario`(`nome`, `email`, `senha`) VALUES ('GEART -2018', 'geart2018@gmail.com', MD5('geart'));