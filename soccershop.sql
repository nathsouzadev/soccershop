-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 31/10/2020 às 18:27
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
-- Banco de dados: `soccershop`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_coment` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`id_coment`, `nome`, `msg`, `data`) VALUES
(1, 'Nathally', 'Muitas opções de times', '2020-10-30 17:16:34'),
(2, 'Zico', 'A camisa do Flamengo está espetacular', '2020-10-30 17:17:42'),
(3, 'Paulo', 'As camisas europeias tem o patch da UCL?', '2020-10-30 17:17:42'),
(4, 'Bia', 'Previsão para camisas femininas?', '2020-10-30 18:38:40'),
(5, 'Diego', 'Devia ter camisas de times argentinos', '2020-10-30 18:41:48'),
(6, 'Bruno', 'Bela camisa do Flamengo', '2020-10-31 01:04:38');

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
(6, 'Nathally Souza', 'Rua A', '9999999999', 'Flamengo 2020', 250, 5, 1250);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_prod` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `preco_venda` decimal(5,2) NOT NULL,
  `imagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_prod`, `categoria`, `descricao`, `preco`, `preco_venda`, `imagem`) VALUES
(1, 'nacional', 'Flamengo 2020', '300.00', '250.00', './images/produtos/fla.jpg'),
(2, 'nacional', 'Palmeiras 2020', '350.00', '199.99', './images/produtos/palmeiras.jpg'),
(3, 'selecao', 'Alemanha 2020', '350.00', '200.00', './images/produtos/alemanha.jpg'),
(4, 'europeu', 'Arsenal 2020/21', '399.99', '350.00', './images/produtos/arsenal.jpg'),
(5, 'selecao', 'Brasil 2020', '399.00', '200.00', './images/produtos/brasil.jpg'),
(6, 'historica', 'Brasil 1994', '200.00', '130.50', './images/produtos/brasil94.jpg'),
(7, 'historica', 'Flamengo 1981', '450.00', '430.00', './images/produtos/fla81.jpg'),
(8, 'casual', 'Flamengo 2020', '180.00', '100.00', './images/produtos/fla_treino.jpg'),
(9, 'nacional', 'Grêmio 2020', '230.00', '180.00', './images/produtos/gremio.jpg'),
(10, 'europeu', 'Manchester City 2020/21', '350.99', '250.99', './images/produtos/man-city.jpg'),
(11, 'europeu', 'Milan 2020/21', '299.99', '150.00', './images/produtos/milan.jpg'),
(12, 'casual', 'Real Madrid 2019/20', '189.99', '89.99', './images/produtos/real_treino.jpg');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_coment`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedidos`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_coment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
