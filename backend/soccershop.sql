-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07/12/2020 às 00:50
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
