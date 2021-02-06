-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Fev-2021 às 16:47
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstackeletro`
--
CREATE DATABASE IF NOT EXISTS `fullstackeletro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fullstackeletro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `valor_unit` decimal(10,2) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `categoria` varchar(200) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `categoria`, `descricao`, `preco`, `imagem`) VALUES
(1, 'geladeira1', 'Geladeira', 'Geladeira Brastemp Side Inverse', '5019.00', 'geladeira_brastemp_inox.jpg'),
(2, 'geladeira2', 'Geladeira', 'Geladeira Frost Free Brastemp Branca', '1910.90', 'geladeira_brastemp_branca.jpg'),
(3, 'geladeira3', 'Geladeira', 'Geladeira Frost Free Consul Prata', '2069.00', 'geladeira_consul_prata.jpg'),
(4, 'fogao1', 'Fogão', 'Fogão 4 bocas Consul Inox', '1129.00', 'fogao_consul.jpg'),
(5, 'fogao2', 'Fogão', 'Fogão de Piso 4 Bocas Atlas Monaco', '600.00', 'fogao_atlas_monaco.jpeg'),
(6, 'microondas1', 'Microondas', 'Microondas Consul 32L Inox 220V', '409.88', 'microondas_consul.jpg'),
(7, 'microondas2', 'Microondas', 'Microondas 25L Espelhado Philco 220V', '464.53', 'microondas_philco.jpeg'),
(8, 'microondas3', 'Microondas', 'Forno de Microondas Eletrolux', '436.05', 'microondas_eletrolux.jpeg'),
(9, 'lavalouca1', 'Lava Louça', 'Lava-louça Eletrolux Inox', '2799.00', 'lavalouca_eletrolux.jpeg'),
(10, 'lavalouca2', 'Lava Louça', 'Lava Louça Compacta Brastemp', '1730.61', 'lavalouca_brastemp.jpeg'),
(11, 'lavadora1', 'Lavadora', 'Lavadora de Roupas Brastemp 11 kg Branca', '1214.10', 'lavadora_brastemp.jpeg'),
(12, 'lavadora2', 'Lavadora', 'Lavadora de Roupas Philco Inverter 12KG', '2179.90', 'lavadora_philco.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
