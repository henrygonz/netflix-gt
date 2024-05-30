CREATE TABLE `actor` (
		`id_actor` INT NOT NULL AUTO_INCREMENT,
		`nombre` VARCHAR(25) NOT NULL,
		`apellido` VARCHAR(50) NOT NULL,
		`nacionalidad` VARCHAR(15),
		PRIMARY KEY (`id_actor`)
) ENGINE = InnoDB;

CREATE TABLE `director` (
        `id_director` INT NOT NULL AUTO_INCREMENT,
        `nombre` VARCHAR(25) NOT NULL,
        `apellido` VARCHAR(50) NOT NULL,
        `nacionalidad` VARCHAR(15) NOT NULL,
        PRIMARY KEY (`id_director`)
) ENGINE = InnoDB;

CREATE TABLE `encab_pelicula` (
        `id_pelicula` INT NOT NULL AUTO_INCREMENT,
        `nombre` VARCHAR(20) NOT NULL,
        `fecha_estreno` DATE NOT NULL,
        `id_director` INT NOT NULL,
        `categoria` VARCHAR(50) NOT NULL,
        `duracion` INT NOT NULL,
        PRIMARY KEY (`id_pelicula`),
        FOREIGN KEY (`id_director`) REFERENCES `director`(`id_director`)
) ENGINE = InnoDB;

CREATE TABLE `detalle_pelicula` (
        `id_detalle` INT NOT NULL,
        `id_pelicula` INT NOT NULL,
        `sinopsis` VARCHAR(100) NOT NULL,
        `calificacion` DOUBLE NOT NULL,
        `idioma` VARCHAR(15) NOT NULL,
        `id_actor` INT NOT NULL,
        PRIMARY KEY (`id_detalle`),
        FOREIGN KEY (`id_pelicula`) REFERENCES `encab_pelicula`(`id_pelicula`),
        FOREIGN KEY (`id_actor`) REFERENCES `actor`(`id_actor`)
) ENGINE = InnoDB;