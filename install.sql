
CREATE TABLE `Entradas` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Cat_Slug` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Entrada` varchar(500) NOT NULL,
  `Descripcion` mediumtext NOT NULL,
  `Precio` varchar(100) NOT NULL,
  `Fechaingreso` varchar(20) NOT NULL,
  `FechaActualizacion` varchar(20) NOT NULL,
  `Estatus` varchar(100) NOT NULL,
  `Orden` varchar(100) NOT NULL,
  `SubCatsJson` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `Entradas_Categorias` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) NOT NULL,
  `SubTipo` varchar(255) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Categoria` varchar(500) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Imagen` varchar(500) NOT NULL,
  `Estatus` varchar(50) DEFAULT 'Activo',
  `Orden` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `Entradas_Categorias` VALUES (1, 'entradas', '', 'general', 'General', '', '', 'Activo', '1000'); 

CREATE TABLE `Entradas_CategoriasSub` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Slug_Base` varchar(100) NOT NULL,
  `Slug_Rel_Base` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Categoria` varchar(500) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Imagen` varchar(500) NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  `Orden` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SubCategorias' AUTO_INCREMENT=1 ;

CREATE TABLE `Entradas_CategoriasSubRel` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Slug_Base` varchar(100) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Categoria` varchar(500) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `Imagen` varchar(500) NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  `Orden` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='SubCategorias' AUTO_INCREMENT=1 ;

CREATE TABLE `Entradas_Estatus` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) NOT NULL,
  `Slug` varchar(100) NOT NULL,
  `Estatus` varchar(50) NOT NULL DEFAULT 'Activo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `Entradas_Estatus` VALUES (1, '', 'Borrador', 'Borrador');
INSERT INTO `Entradas_Estatus` VALUES (2, '', 'Activo', 'Activo');
INSERT INTO `Entradas_Estatus` VALUES (3, '', 'Inactivo', 'Inactivo');

CREATE TABLE `Entradas_Rel_Categorias` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Id_Producto` varchar(100) NOT NULL,
  `Slug_Base` varchar(100) NOT NULL,
  `Slug_Rel_Base` varchar(100) NOT NULL,
  `Slug_SubCat` varchar(100) NOT NULL,
  `Estatus` varchar(20) NOT NULL,
  `FechaHora` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `Entradas_Tipos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) NOT NULL,
  `Singular` varchar(255) NOT NULL,
  `Plural` varchar(255) NOT NULL,
  `Descripcion` mediumtext NOT NULL,
  `Estatus` varchar(50) NOT NULL DEFAULT 'Activo',
  `UsaPrecio` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `Entradas_Tipos` VALUES (1, 'entradas', 'Entrada', 'Entradas', 'Entradas', 'Activo', '');
