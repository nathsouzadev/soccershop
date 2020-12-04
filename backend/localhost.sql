-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/12/2020 às 23:06
-- Versão do servidor: 10.4.13-MariaDB
-- Versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `comunity_education_usp`
--
CREATE DATABASE IF NOT EXISTS `comunity_education_usp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `comunity_education_usp`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registers`
--

CREATE TABLE `registers` (
  `id_register` int(11) NOT NULL,
  `name_register` varchar(100) NOT NULL,
  `date_born_register` date NOT NULL,
  `phone_register` varchar(11) NOT NULL,
  `city_register` varchar(50) NOT NULL,
  `hpv_register` varchar(3) NOT NULL,
  `hiv_register` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `registers`
--

INSERT INTO `registers` (`id_register`, `name_register`, `date_born_register`, `phone_register`, `city_register`, `hpv_register`, `hiv_register`) VALUES
(1, 'Fulano', '1990-08-19', '1111111111', 'São Paulo', 'Sim', 'Não'),
(2, 'Ciclano', '1993-07-21', '11111111111', 'Rio de Janeiro', 'Não', 'Sim'),
(3, 'Beltrano', '2000-08-17', '1111111111', 'São Paulo', 'Não', 'Não'),
(4, 'Lorem', '2002-06-21', '1111111111', 'Osasco', 'Sim', 'Sim'),
(5, 'Ipsum', '1999-07-23', '1111111111', 'Rio de Janeiro', 'Sim', 'Não'),
(6, 'Fulanilson', '1990-07-13', '1111111111', 'São Paulo', 'Sim', 'Sim'),
(7, 'Ciclanilson', '1993-12-07', '11111111111', 'São Paulo', 'Não', 'Sim'),
(8, 'Son', '2000-08-24', '1111111111', 'São Paulo', 'Não', 'Sim'),
(9, 'Sonilson', '2020-09-30', '11111111111', 'Santos', 'Não', 'Sim'),
(10, 'Ilsonilson', '1998-05-18', '1111111111', 'Rio de Janeiro', 'Sim', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `study`
--

CREATE TABLE `study` (
  `id_study` int(11) NOT NULL,
  `name_study` varchar(100) NOT NULL,
  `start_date_study` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `study`
--

INSERT INTO `study` (`id_study`, `name_study`, `start_date_study`) VALUES
(1, 'HPV', '2020-08-02'),
(2, 'Mosaico', '2020-09-10'),
(3, 'HPV/HIV', '2020-12-08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `study_registers`
--

CREATE TABLE `study_registers` (
  `id_study_register` int(11) NOT NULL,
  `fk_idStudy` int(11) NOT NULL,
  `fk_idregisters` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `study_registers`
--

INSERT INTO `study_registers` (`id_study_register`, `fk_idStudy`, `fk_idregisters`) VALUES
(1, 2, 3),
(2, 2, 10),
(3, 2, 6),
(4, 2, 1),
(5, 2, 5),
(6, 1, 3),
(7, 1, 2),
(8, 1, 7),
(9, 1, 8),
(10, 1, 9),
(7, 3, 2),
(8, 3, 7),
(9, 3, 8),
(10, 3, 9);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id_register`);

--
-- Índices de tabela `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`id_study`);

--
-- Índices de tabela `study_registers`
--
ALTER TABLE `study_registers`
  ADD KEY `fk_idStudy` (`fk_idStudy`),
  ADD KEY `fk_idregisters` (`fk_idregisters`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `registers`
--
ALTER TABLE `registers`
  MODIFY `id_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `study`
--
ALTER TABLE `study`
  MODIFY `id_study` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `study_registers`
--
ALTER TABLE `study_registers`
  ADD CONSTRAINT `fk_idStudy` FOREIGN KEY (`fk_idStudy`) REFERENCES `study` (`id_study`),
  ADD CONSTRAINT `fk_idregisters` FOREIGN KEY (`fk_idregisters`) REFERENCES `registers` (`id_register`);
--
-- Banco de dados: `fseletro`
--
CREATE DATABASE IF NOT EXISTS `fseletro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fseletro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `in_coment` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`in_coment`, `nome`, `msg`, `data`) VALUES
(1, 'Nathally Souza', 'Bom atendimento :)', '2020-10-25 16:41:34'),
(2, 'Zico', 'Entrega dentro do prazo esperado.', '2020-10-25 16:42:01'),
(3, 'Lucia', 'Boa variedade de produtos', '2020-10-26 16:37:58'),
(4, 'Lucia', 'Bons produtos', '2020-10-30 13:36:40'),
(5, 'Ronaldo', 'Penta 2002', '2020-10-30 13:47:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(500) NOT NULL,
  `telefone` int(11) DEFAULT NULL,
  `produto` varchar(100) DEFAULT NULL,
  `valor_unitario` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `nome`, `endereco`, `telefone`, `produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(1, 'Nathally', 'Rua A', 1199999999, 'Geladeira', 5000, 2, 10000),
(2, 'Zico', 'Rua B', 1199999999, 'Fogão', 600, 1, 600),
(3, 'Zico', 'Rua B', 1199999999, 'Fogão', 600, 1, 600),
(4, 'Zico', 'Rua B', 1199999999, 'Fogão', 600, 1, 600);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `preco_venda` float DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `descricao`, `preco`, `preco_venda`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', 6389, 5019, './imagens/geladeira1.jpg'),
(2, 'geladeira', 'Geladeira Frost Free Brastemp Branca 375 litros', 2068, 1910, './imagens/geladeira2.jpg'),
(3, 'geladeira', 'Geladeira Frost Free Consul Prata 340 litros', 2199, 2060, './imagens/geladeira2.jpg'),
(4, 'fogao', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', 1299, 1129, './imagens/fogao1.jpg'),
(5, 'fogao', 'Fogão de Piso 4 Bocas Atlas Mon', 609, 519, './imagens/fogao2.jpg'),
(6, 'microondas', 'Micro-ondas Consul 32 Litros Inox 220V', 580, 409.88, './imagens/microondas1.jpg'),
(7, 'microondas', 'Micro-ondas 25L Espelhado Philco 220V', 508.7, 464.53, './imagens/microondas2.jpg'),
(8, 'microondas', 'Forno de Microondas Electrolux 20L Branco', 459.9, 436.05, './imagens/microondas3.jpg'),
(9, 'lava_louca', 'Lava-Louça Electrolux Inox com 10 Serviços, 6 Programas de Lavagem e Painel Blue Touch', 3599, 2799, './imagens/lava1.jpg'),
(10, 'lava_louca', 'Lava Louça Compacta 8 Serviços Branca 127V Brastemp', 1970.5, 1730.61, './imagens/lava2.jpg'),
(11, 'lava_roupa', 'Lavadora de Roupas Brastemp 11kg com Turbo Performance Branca', 1699, 1214.1, './imagens/lavaroupa1.jpg'),
(12, 'lava_roupa', 'Lavadora de Roupas Philco Inverter 12kg', 2399, 2179.9, './imagens/lavaroupa2.jpg');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`in_coment`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `in_coment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Despejando dados para a tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Despejando dados para a tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'pedidos', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"0\",\"limit_to\":\"0\",\"limit_from\":\"0\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"comunity_education_usp\",\"table\":\"study\"},{\"db\":\"comunity_education_usp\",\"table\":\"registers\"},{\"db\":\"comunity_education_usp\",\"table\":\"study_registers\"},{\"db\":\"soccershop\",\"table\":\"products\"},{\"db\":\"soccershop\",\"table\":\"categorys\"},{\"db\":\"soccershop\",\"table\":\"comments\"},{\"db\":\"sistema_teste\",\"table\":\"users\"},{\"db\":\"soccershop\",\"table\":\"coments\"},{\"db\":\"soccershop\",\"table\":\"comentarios\"},{\"db\":\"soccershop\",\"table\":\"categories\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('sistema_teste', 'products', 'name'),
('soccershop', 'categorys', 'name_categorys'),
('soccershop', 'products', 'category');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-04 22:06:15', '{\"lang\":\"pt_BR\",\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0,\"ThemeDefault\":\"original\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `recode_impulso`
--
CREATE DATABASE IF NOT EXISTS `recode_impulso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recode_impulso`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `periodo` varchar(120) NOT NULL,
  `duracao` varchar(120) NOT NULL,
  `local` varchar(240) NOT NULL,
  `sal_ini` decimal(10,0) NOT NULL,
  `sal_med` decimal(10,0) NOT NULL,
  `sal_exp` decimal(10,0) NOT NULL,
  `fonte` varchar(240) NOT NULL,
  `descricao` text NOT NULL,
  `image` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome`, `periodo`, `duracao`, `local`, `sal_ini`, `sal_med`, `sal_exp`, `fonte`, `descricao`, `image`) VALUES
(1, 'Economia (Ciências Econômicas)', 'Diurno, Integral ou Noturno', '8 a 10 semestres (4 a 5 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP\r\n', '3800', '6000', '8600', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/economista/0', 'Poderá atuar nas áreas de planejamento econômico, financeiro e administrativo; pesquisar e analisar o mercado e os preços, a renda nacional, a conjuntura econômica, o desenvolvimento econômico, o custo de vida e salário; efetuar perícia e avaliações econômicas; determinar o nível ideal de produção; fixar preços de venda e apropriação de custos; prestar assessoria de economia e finanças, visando sempre o aumento de produtividade e a rentabilidade do patrimônio ou dos serviços em âmbito privado e público. Poderá atuar como professor universitário.', './imgs/cursos/negocio.png'),
(2, 'Engenharia Ambiental', 'Integral ou Noturno', '8 a 12 semestres (4 a 6 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '3000', '5100', '7900', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/engenheiro-ambiental/0', 'O Engenheiro Ambiental, por sua formação generalista, poderá atuar em diversos segmentos da socidade, nas esferas pública e privadas, aliando ao conhecimento tecnológico, conteúdos relacionados à legislação ambiental e às ciências sociais e humanas, de forma a atuar em todas as frentes relacionadas com o meio ambiente, como agente modificador e transformador da sociedade. O profissional estará capacitado para contribuir com a resolução de problemas ambientais por meio da realização de análises, diagnósticos integrados, concepção e execução de projetos e avaliações técnicas, tecnológicas, sócio-econômicas e de impactos nos setores e sistemas ambientais. Poderá atuar em agências reguladoras e órgãos ambientais nos poderes públicos federal, estadual e municipal, em concessionárias de serviços públicos, agências bilaterais e multilaterais de cooperação, em empresas do setor industrial, de serviços, de consultoria e projetos de pesquisa, ONGs e como profissional autônomo ', './imgs/cursos/engambiental.png'),
(3, 'Engenharia de Computação', 'Integral', '10 semestres (5 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '4400', '6300', '8600', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/engenheiro-de-software/0', 'O engenheiro de computação é um profissional que possui qualificação para atuar em uma ampla gama de atividades na área da computação, abrangendo, entre outros, sistemas embarcados, computadores pessoais e redes de computadores. O engenheiro de computação possui a formação necessária para analisar, especificar, projetar, implementar, integrar, testar e manter sistemas de hardware e software. Este profissional pode atuar no desenvolvimento de produtos, aplicações e serviços em qualquer área da informática e da tecnologia da informação, atendendo a demanda de indústrias, empresas, grupos financeiros, centros de pesquisa e desenvolvimento, universidades, estabelecimentos de ensino e do setor de serviços públicos. A formação do engenheiro de computação agrega conhecimentos das áreas de Engenharia Elétrica e da Ciência da Computação. ', './imgs/cursos/engenhariadesoftware.png'),
(4, 'Farmácia', 'Integral e noturno', '10 semestres (5 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '3000', '3400', '4100', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/farmaceutico/0', 'A realidade nacional demanda, cada vez mais, a inserção de profissionais capazes de promover o desenvolvimento de novos fármacos, especialmente aqueles que utilizam o potencial da biodiversidade brasileira, respaldada em pesquisa científica e tecnologia avançada. O curso de graduação em Farmácia da Unicamp prepara profissionais da saúde com sólida formação em pesquisa, desenvolvimento, produção e controle da qualidade de medicamentos, relacionando sempre a área clínica.\r\nOs estudantes são capacitados para atuar ao lado de outros profissionais da saúde, na construção de um sistema de saúde cada vez mais efetivo. O projeto pedagógico do curso prevê a conclusão em dez semestres, em período integral, qualificando o aluno para todas as habilidades do profissional. ', './imgs/cursos/farmacia.png'),
(5, 'Medicina', 'Integral', '12 semestres (6 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '6900', '10500', '15200', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/medico/0', 'Poderá atuar como clínico geral ou especializar-se, realizando o atendimento médico conforme a hierarquização de cuidados proporcionados pelo SUS a adultos, crianças e adolescentes de ambos os gêneros, em nível primário e secundário geral, incluindo as emergências mais comuns e medidas de suporte vital básico. Poderá atender pessoas e comunidade de forma integral, criando vínculos e se responsabilizando pelo seu paciente, identificando riscos mais comuns para a saúde e atuando preventivamente. O curso de Medicina o tornará apto a atuar com dicernimento frente à situação econômica, financeira e organizacional do sistema de saúde, levando em consideração os aspectos de custo/benefício e eqüidade, sendo capaz de trabalhar em equipe, incorporando criticamente tecnologias. Aplicar princípios éticos e humanísticos nas relações com pessoas e a comunidade, para promover a defesa da individualidade, respeitando os princípios de cidadania, visando a redução das desigualdades. Otimizar o uso dos recursos propedêuticos, valorizando o método clínico em todos os seus aspectos. Diagnosticar e tratar doenças da gestante, da criança, do adulto e do idoso em critérios de prevalência, potencial mórbido. Adequar criticamente a sua vida profissional aos contextos social, político e histórico vigentes, com perspectiva transformadora. ', './imgs/cursos/medicina.png'),
(6, 'Comunicação Social - Midialogia (Jornalismo)', 'Integral, Matutino ou Noturno ', '8 semestres (4 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '1700', '2600', '3800', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/jornalista/0', 'Este profissional tem sua formação centrada no estudo das mídias audiovisuais. Ocupa-se de suas características específicas, suas convergências, interfaces e fronteiras. Compreende seus campos de linguagem e tecnologia, observando suas eficácias, usos e funcionamentos nas sociedades contemporâneas, historicamente constituídas. O Curso se dedica a uma formação de saber-fazer, saber-pensar, saber-estar, saber-ser no campo da cultura e tecnologia midiática. Este profissional poderá atuar em áreas específicas de som, fotografia, cinema, vídeo, televisão, computação gráfica, hipermídia, na produção, realização, recepção e gestão dessas obras audiovisuais, com decisivo interesse crítico e analítico pelas mídias audivisuais. Pode também desenvolver uma carreira no âmbito da produção cultural e no trabalho de crítica. Outra atuação pode acontecer na esfera acadêmica interdiciplinar da Comunicação Social, no exercício da docência e da pesquisa. Primeiro, existe uma formação baseada num núcleo comum do profissional, independente do modo com que venha atuar no mundo do trabalho depois de formado. Trata-se de um conjunto de saberes fundamentais para a discussão das mídias audiovisuais. ', './imgs/cursos/jornalismo.png'),
(7, 'Nutrição', 'Integral, matutino ou noturno', '10 semestres (5 anos)', 'Unicamp, USP, UNESP, UFABC, UNIVESP', '2500', '2900', '3400', 'https://www.vagas.com.br/mapa-de-carreiras/cargos/nutricionista/0', 'Aprender a atuar de forma integrada e compartilhada na PROMOÇÃO, PREVENÇÃO E RECUPERAÇÃO da saúde a nível individual e coletivo. Realizar procedimentos específicos dentro de seu âmbito profissional conforme a hierarquização de cuidados proporcionados pelo SUS. Realizar seu aprimoramento continuado, selecionando, coletando e analisando a informação científica pertinente à prática profissional, mantendo-se cientificamente atualizado. Atender as pessoas e a comunidade de forma integral, criando vínculos, identificando os riscos mais comuns à saúde e atuando preventivamente. Incorporar o conhecimento das ciências básicas na sua prática diária. Atuar com discernimento frente à situação econômica, social e organizacional do sistema de saúde, levando em consideração o custo/benefício, a equidade e, sendo principalmente capaz de trabalhar em equipe, aplicando sempre princípios humanísticos e éticos nas relações individuais e com a comunidade. Saber lidar com a diversidade de comportamentos, credos, raças e idéias, reconhecendo os direitos individuais e coletivos das pessoas envolvidas. Adequar criticamente sua vida profissional aos contextos social, político e histórico vigente, promovendo a defesa da individualidade, respeitando os princípios de cidadania, com a perspectiva transformadora de redução das desigualdades. ', './imgs/cursos/gastronomia.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `usuario` varchar(80) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `usuario`, `senha`, `email`, `image`) VALUES
(15, 'Squad 4', '2bef362c73d49018a7bf9aaef3f33d91', 'squad4@eduimpulso.com.br', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Banco de dados: `recode_tarde`
--
CREATE DATABASE IF NOT EXISTS `recode_tarde` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recode_tarde`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `idade` int(2) NOT NULL,
  `cursopreferido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `sexo`, `idade`, `cursopreferido`) VALUES
(1, 'Nathally', 'F', 30, 1),
(2, 'Lucia', 'F', 40, 2),
(3, 'Diego', 'M', 38, 3),
(4, 'Luiz', 'M', 35, 4),
(5, 'Elane', 'F', 35, 4),
(6, 'Neymar', 'M', 30, 1),
(7, 'Junior', 'M', 40, 3),
(8, 'Zico', 'M', 50, NULL),
(9, 'Vinicius', 'M', 19, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `assiste`
--

CREATE TABLE `assiste` (
  `id_assiste` int(11) NOT NULL,
  `tempo` date DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `assiste`
--

INSERT INTO `assiste` (`id_assiste`, `tempo`, `id_aluno`, `id_curso`) VALUES
(1, '2020-01-01', 3, 1),
(2, '2019-01-01', 3, 2),
(3, '2020-01-01', 1, 4),
(4, '2018-01-01', 1, 1),
(5, '2028-01-01', 1, 2),
(6, '2020-01-01', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `carga` int(11) NOT NULL,
  `aulas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome`, `carga`, `aulas`) VALUES
(1, 'HTML', 40, 10),
(2, 'CSS', 10, 20),
(3, 'JavaScript', 40, 10),
(4, 'PHP', 20, 20);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `cursopreferido` (`cursopreferido`);

--
-- Índices de tabela `assiste`
--
ALTER TABLE `assiste`
  ADD PRIMARY KEY (`id_assiste`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `assiste`
--
ALTER TABLE `assiste`
  MODIFY `id_assiste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `curso` (`id_curso`);

--
-- Restrições para tabelas `assiste`
--
ALTER TABLE `assiste`
  ADD CONSTRAINT `assiste_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `assiste_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`);
--
-- Banco de dados: `sistema_teste`
--
CREATE DATABASE IF NOT EXISTS `sistema_teste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistema_teste`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `born` date NOT NULL,
  `cpf` bigint(20) NOT NULL,
  `adress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `client`
--

INSERT INTO `client` (`idClient`, `name`, `phone`, `born`, `cpf`, `adress`) VALUES
(1, 'Flamengo', 11222222333, '1985-11-17', 2365478965, 'Flamengo'),
(2, 'Boca Juniors', 1122333665544, '1905-04-03', 23654441120, 'Boca Juniors'),
(3, 'Barcelona', 1122233444, '1989-11-29', 11122233399, 'Barcelona'),
(4, 'Napoli', 223336655444, '1926-08-01', 55223366699, 'Napoli'),
(5, 'Sevilla', 11222448899, '1980-01-25', 22553344563, 'Sevilla'),
(6, 'Villarreal', 6699885556, '1923-03-10', 300035466987, 'Espanha'),
(7, 'Liverpool', 5533664252321, '1982-06-03', 32211455879, 'Liverpool'),
(8, 'Leeds', 663322145863, '1919-10-17', 365478920152, 'Leeds'),
(9, 'Werder Bremen', 663256632, '1899-02-04', 7896541256302, 'Bremen'),
(10, 'Porto', 22569843654, '1983-09-28', 25642365412, 'Porto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `post` text DEFAULT NULL,
  `tempo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id_post`, `id_user`, `post`, `tempo`) VALUES
(1, 2, 'Olá mundo!', '2020-11-02 11:20:58'),
(2, 2, 'Uma nova rede social', '2020-11-02 11:20:58'),
(3, 2, 'Verificando ordenação', '2020-11-02 19:06:15'),
(4, 2, 'Uma vez Flamengo', '2020-11-02 19:46:31'),
(5, 2, 'Finalizando esquema de postagens', '2020-11-02 19:47:15'),
(6, 2, 'Destruindo variáveis na memória', '2020-11-02 19:48:50'),
(8, 3, 'Em dezembro de 81', '2020-11-02 20:09:51'),
(9, 3, 'O Flamengo acertou ao apostar na base', '2020-11-02 20:10:13'),
(10, 3, 'Campeão mundial', '2020-11-02 21:06:31'),
(11, 2, 'Tudo bem?', '2020-11-03 00:50:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `idProducts` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `fk_idProvider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`idProducts`, `name`, `quantity`, `fk_idProvider`) VALUES
(1, 'Maradona', 1, 1),
(2, 'Ronaldo', 1, 2),
(3, 'Ospina', 1, 3),
(4, 'Thierry Henry', 1, 4),
(5, 'Iniesta', 1, 5),
(6, 'Lewandowski', 1, 6),
(7, 'Kubo', 1, 7),
(8, 'Kewell', 1, 8),
(9, 'Nedved', 1, 9),
(10, 'De Bruyne', 1, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `provider`
--

CREATE TABLE `provider` (
  `idProvider` int(11) NOT NULL,
  `company` varchar(200) NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `provider`
--

INSERT INTO `provider` (`idProvider`, `company`, `cnpj`, `adress`, `phone`, `email`) VALUES
(1, 'Argentina', 1234567898520, 'Argentina', 119999999999, 'argentina@argentina.com'),
(2, 'Brasil', 12365478952022, 'Brasil', 11321465252, 'brasil@brasil.com.br'),
(3, 'Colômbia', 12365478922522, 'Colômbia', 11222222222, 'colombia@colombia.com'),
(4, 'França', 21345236987, 'França', 22333333333, 'franca@franca.fr'),
(5, 'Espanha', 2131596325541, 'Espanha', 11333336666, 'espanha@espanha.es'),
(6, 'Polônia', 3651447885003, 'Polônia', 336633664455, 'polonia@lewa.pol'),
(7, 'Japão', 57583928393272, 'Japão', 9988877744455, 'japao@jap.com'),
(8, 'Austrália', 321055446985, 'Austrália', 55222331144, 'australia@au.com'),
(9, 'República Tcheca', 1332649955223, 'República Tcheca', 33000554412, 'rep@tcheca.com'),
(10, 'Bélgica', 44343444332, 'Bélgica', 8877799663202, 'belgica@bel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sell`
--

CREATE TABLE `sell` (
  `idSell` int(11) NOT NULL,
  `fk_idClient` int(11) NOT NULL,
  `fk_idproducts` int(11) NOT NULL,
  `quantity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `sell`
--

INSERT INTO `sell` (`idSell`, `fk_idClient`, `fk_idproducts`, `quantity`) VALUES
(1, 2, 1, 1),
(2, 8, 8, 1),
(3, 6, 7, 1),
(4, 3, 2, 1),
(5, 4, 3, 1),
(6, 3, 4, 1),
(7, 9, 10, 1),
(8, 7, 8, 1),
(9, 3, 5, 1),
(10, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id_user`, `name`, `phone`) VALUES
(1, 'Nathally', '5511990116555'),
(2, 'Bruno Alves', '5511930907394'),
(3, 'Lucia', '5511999999999');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `usuario` varchar(80) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `usuario`, `senha`, `email`, `image`) VALUES
(2, 'Nathally', '25d55ad283aa400af464c76d713c07ad', 'nathallyccd@gmail.com', './images/nathally.jpg'),
(3, 'Zico', 'b3b4d2dbedc99fe843fd3dedb02f086f', 'zico@fla.com.br', './images/zico.jpeg'),
(11, 'Alves', '12345678', 'alves@gmailcom', ''),
(12, 'Nathally', 'e10adc3949ba59abbe56e057f20f883e', 'nat@gmail.com', '');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProducts`),
  ADD KEY `fk_idProvider` (`fk_idProvider`);

--
-- Índices de tabela `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`idProvider`);

--
-- Índices de tabela `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`idSell`),
  ADD KEY `fk_idClients` (`fk_idClient`),
  ADD KEY `fk_idProducts` (`fk_idproducts`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `idProducts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `provider`
--
ALTER TABLE `provider`
  MODIFY `idProvider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `sell`
--
ALTER TABLE `sell`
  MODIFY `idSell` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `usuarios` (`id_user`);

--
-- Restrições para tabelas `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_idProvider` FOREIGN KEY (`fk_idProvider`) REFERENCES `provider` (`idProvider`);

--
-- Restrições para tabelas `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `fk_idClients` FOREIGN KEY (`fk_idClient`) REFERENCES `client` (`idClient`),
  ADD CONSTRAINT `fk_idProducts` FOREIGN KEY (`fk_idproducts`) REFERENCES `products` (`idProducts`);
--
-- Banco de dados: `soccershop`
--
CREATE DATABASE IF NOT EXISTS `soccershop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `soccershop`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorys`
--

CREATE TABLE `categorys` (
  `id_categorys` int(11) NOT NULL,
  `name_categorys` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `categorys`
--

INSERT INTO `categorys` (`id_categorys`, `name_categorys`) VALUES
(1, 'Clubes brasileiros'),
(2, 'Clubes europeus'),
(3, 'Camisas históricas'),
(4, 'Seleções nacionais'),
(5, 'Casuais');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `name_msg` varchar(50) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `comments`
--

INSERT INTO `comments` (`id_comment`, `name_msg`, `msg`, `date`) VALUES
(1, 'Nathally', 'Muitas opções de times', '2020-10-30 17:16:34'),
(2, 'Zico', 'A camisa do Flamengo está espetacular', '2020-10-30 17:17:42'),
(27, 'Testando', ' Tudo ok', '2020-12-02 11:39:26'),
(28, 'new msg', 'msg', '2020-12-02 11:39:49'),
(29, 'Teste', 'testei ', '2020-12-02 12:20:02'),
(30, 'Teste', 'testei de novo ', '2020-12-02 12:21:38'),
(31, 'Comprei', 'Comproiu ', '2020-12-02 12:23:16'),
(32, 'Comprando', 'Comprei ', '2020-12-02 12:23:36'),
(33, 'Show', 'Show ', '2020-12-02 22:11:19'),
(34, 'cADAStro', 'teste ', '2020-12-02 22:58:55'),
(35, 'cadastras', 'cadastra ', '2020-12-04 18:48:27'),
(36, 'cal', 'cal ', '2020-12-04 18:53:06'),
(37, 'cal', 'cal ', '2020-12-04 18:53:53'),
(38, 'oi', 'ok ', '2020-12-04 19:10:52'),
(39, 'oi', 'oi tudo bem?', '2020-12-04 21:18:51'),
(40, 'Claudiio', 'Foi', '2020-12-04 21:30:48'),
(41, 'Gabigol', 'Hoje tem gol do Gabigol', '2020-12-04 21:39:28'),
(42, 'oi', 'oioioi', '2020-12-04 22:04:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(500) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `produto` varchar(100) DEFAULT NULL,
  `valor_unitario` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`idpedidos`, `nome`, `endereco`, `telefone`, `produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
(6, 'Nathally Souza', 'Rua A', '9999999999', 'Flamengo 2020', 250, 5, 1250),
(7, 'João Paulo', 'Rua C, Rio de Janeiro', '119999999999', 'Brasil 2020', 200, 2, 400),
(8, 'Zico', 'Rua H, Flamengo, Rio de Janeiro', '11198119879', 'Flamengo 2020', 250, 3, 750),
(9, 'Lucia', 'Rua, São Paulo', '119999999999', 'Alemanha 2020', 200, 3, 600);

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `fk_idcategorys` int(11) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`id_product`, `category`, `fk_idcategorys`, `name_product`, `price`, `image`) VALUES
(1, 'nacional', 1, 'Flamengo 2020', '300.00', './images/produtos/fla.jpg'),
(2, 'nacional', 1, 'Palmeiras 2020', '350.00', './images/produtos/palmeiras.jpg'),
(3, 'selecao', 4, 'Alemanha 2020', '350.00', './images/produtos/alemanha.jpg'),
(4, 'europeu', 2, 'Arsenal 2020/21', '399.99', './images/produtos/arsenal.jpg'),
(5, 'selecao', 4, 'Brasil 2020', '399.00', './images/produtos/brasil.jpg'),
(6, 'historica', 3, 'Brasil 1994', '200.00', './images/produtos/brasil94.jpg'),
(7, 'historica', 3, 'Flamengo 1981', '450.00', './images/produtos/fla81.jpg'),
(8, 'casual', 5, 'Flamengo T 2020', '180.00', './images/produtos/fla_treino.jpg'),
(9, 'nacional', 1, 'Grêmio 2020', '230.00', './images/produtos/gremio.jpg'),
(10, 'europeu', 2, 'Manchester City 2020/21', '350.99', './images/produtos/man-city.jpg'),
(11, 'europeu', 2, 'Milan 2020/21', '299.99', './images/produtos/milan.jpg'),
(12, 'casual', 5, 'Real Madrid 2019/20', '189.99', './images/produtos/real_treino.jpg');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id_categorys`);

--
-- Índices de tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_idcategorys` (`fk_idcategorys`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id_categorys` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_idcategorys` FOREIGN KEY (`fk_idcategorys`) REFERENCES `categorys` (`id_categorys`);
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
