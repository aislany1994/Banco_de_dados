-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jan-2023 às 16:13
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `curso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `Cod_Curso` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Carga_Horaria` smallint(6) DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `Cod_Aluno` int(11) DEFAULT NULL,
  `Cod_Contato` int(11) DEFAULT NULL,
  `Cod_Turma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`Cod_Curso`, `Nome`, `Carga_Horaria`, `Preco`, `Cod_Aluno`, `Cod_Contato`, `Cod_Turma`) VALUES
(1, 'informatica', 400, 1000, 1, 2, 1),
(2, 'informatica', 500, 2000, 2, 1, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Cod_Curso`),
  ADD KEY `Cod_Aluno` (`Cod_Aluno`),
  ADD KEY `Cod_Contato` (`Cod_Contato`),
  ADD KEY `Cod_Turma` (`Cod_Turma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `Cod_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`Cod_Aluno`) REFERENCES `aluno` (`Cod_Aluno`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`Cod_Contato`) REFERENCES `contato` (`Cod_Contato`),
  ADD CONSTRAINT `curso_ibfk_3` FOREIGN KEY (`Cod_Turma`) REFERENCES `turma` (`Cod_Turma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
