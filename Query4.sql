-- CARDINALIDAD
-- MODELO ENTIDAD - RELACION

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  UNIQUE INDEX `username_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  PRIMARY KEY (`id`));
  
  -- este codigo crea una tabla de nombre user si no existe otra con el mismo nombre, si existe aparecerá un error 1049:
  -- Error Code: 1049. Unknown database 'mydb'
