-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02-Dez-2016 às 22:43
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetointegrador`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `amigo`
--

CREATE TABLE `amigo` (
  `IDUSUARIO1` int(11) NOT NULL,
  `IDUSUARIO2` int(11) NOT NULL,
  `ATIVO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `amigo`
--

INSERT INTO `amigo` (`IDUSUARIO1`, `IDUSUARIO2`, `ATIVO`) VALUES
(1, 2, 1),
(1, 2, 1),
(3, 1, 1),
(3, 2, 1),
(3, 4, 1),
(2, 3, 1),
(4, 1, 1),
(4, 3, 1),
(3, 8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `IDARQUIVO` int(11) NOT NULL,
  `IDUSUARIO` int(11) DEFAULT NULL,
  `DATAENVIOARQUIVO` datetime DEFAULT NULL,
  `NOMEARQUIVO` varchar(50) DEFAULT NULL,
  `DESCRICAO` varchar(2000) NOT NULL,
  `PATHARQUIVO` varchar(300) NOT NULL,
  `ATIVO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `arquivo`
--

INSERT INTO `arquivo` (`IDARQUIVO`, `IDUSUARIO`, `DATAENVIOARQUIVO`, `NOMEARQUIVO`, `DESCRICAO`, `PATHARQUIVO`, `ATIVO`) VALUES
(1, 3, '2016-11-25 00:00:00', 'Primeiro arquivo', 'Lorem ipsum Do commodo Excepteur mollit officia veniam occaecat fugiat ullamco officia labore Ut cupidatat. Lorem ipsum Veniam non ut tempor occaecat exercitation culpa ullamco id. Lorem ipsum Dolore incididunt Duis ullamco sed commodo sit id. Lorem ipsum Commodo nisi Excepteur Ut dolore sit occaecat aute reprehenderit ullamco elit. Lorem ipsum In velit deserunt ex dolore deserunt dolor cupidatat ea.\n\nLorem ipsum Laborum non enim et laboris esse ut sunt non in ex in est.\n\nLorem ipsum Excepteur adipisicing cupidatat aute do in consequat adipisicing proident elit. Lorem ipsum Occaecat magna sed minim id nostrud irure cupidatat amet culpa. Lorem ipsum Ad dolore elit eiusmod tempor voluptate elit qui.', '/FilesUploaded/0001.pdf', 1),
(2, 3, '2016-11-25 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1),
(3, 3, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 1),
(4, 4, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 1),
(5, 1, '2016-11-25 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1),
(6, 2, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 1),
(7, 4, '2016-11-23 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `IDENDERECO` int(11) NOT NULL,
  `IDUSUARIO` int(11) NOT NULL,
  `LOGRADOURO_RUA` varchar(300) NOT NULL,
  `NUMERO` varchar(5) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `COMPLEMENTO` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(2) NOT NULL,
  `CIDADE` varchar(50) NOT NULL,
  `BAIRRO` varchar(100) NOT NULL,
  `ATIVO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOMEUSUARIO` varchar(80) DEFAULT NULL,
  `DATANASCUSUARIO` date DEFAULT NULL,
  `SEXOUSUARIO` enum('M','F') DEFAULT NULL,
  `EMAILUSUARIO` varchar(50) NOT NULL,
  `SENHAUSUARIO` varchar(20) NOT NULL,
  `TELEFONEUSUARIO` varchar(15) DEFAULT NULL,
  `DATACADASTRO` datetime NOT NULL,
  `ATIVO` tinyint(1) NOT NULL,
  `PATHIMAGEM` varchar(300) DEFAULT NULL,
  `OBJETIVO` varchar(500) DEFAULT NULL,
  `PERFIL` varchar(500) DEFAULT NULL,
  `SOBREMIM` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `NOMEUSUARIO`, `DATANASCUSUARIO`, `SEXOUSUARIO`, `EMAILUSUARIO`, `SENHAUSUARIO`, `TELEFONEUSUARIO`, `DATACADASTRO`, `ATIVO`, `PATHIMAGEM`, `OBJETIVO`, `PERFIL`, `SOBREMIM`) VALUES
(1, 'Jhon', '1994-11-08', 'M', 'jhon@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/10272575.jpg', NULL, NULL, ''),
(2, 'Rodolfo Dona Hosp', '1989-09-17', 'M', 'rod@email.com.br', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/14650674.jpg', NULL, NULL, ''),
(3, 'Luiz Fernando Lopes', '1991-11-21', 'M', 'lopesluiz_@hotmail.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/11885160.jpg', 'sdfsdf', '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account o', 'sdfasdfsdfasdfsdfasdfsadfsadf sdfsadfsaddsfsdf'),
(4, 'Felipe Augusto Teixeira Fernandes', '1995-11-09', 'F', 'felipa@email.com.br', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/14708375.jpg', NULL, NULL, ''),
(5, 'Eva Luna', '1991-11-21', 'F', 'eva@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/21321231321.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(6, 'Bianca Carvalho', '1991-11-21', 'F', 'bianca@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/4654564464.jpg', 'sdfsadfsdfsdfsdafsdf', 'fgadfsff', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(7, 'Asshylay Munia', '1991-11-21', 'F', 'ashy123@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/87897979.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(8, 'Alicy Email Nome', '1991-11-21', 'F', 'alicya@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/171741717.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(9, 'Maria Blinda', '1991-11-21', 'F', 'maria@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/4654564464.jpg', '', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amigo`
--
ALTER TABLE `amigo`
  ADD KEY `FK_AMIGO_USUARIO1` (`IDUSUARIO1`),
  ADD KEY `FK_AMIGO_USUARIO2` (`IDUSUARIO2`);

--
-- Indexes for table `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`IDARQUIVO`),
  ADD KEY `FK_ARQUIVO_USUARIO` (`IDUSUARIO`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`IDENDERECO`),
  ADD KEY `IDUSUARIO` (`IDUSUARIO`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `IDARQUIVO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `IDENDERECO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `amigo`
--
ALTER TABLE `amigo`
  ADD CONSTRAINT `FK_AMIGO_USUARIO1` FOREIGN KEY (`IDUSUARIO1`) REFERENCES `usuario` (`IDUSUARIO`),
  ADD CONSTRAINT `FK_AMIGO_USUARIO2` FOREIGN KEY (`IDUSUARIO2`) REFERENCES `usuario` (`IDUSUARIO`);

--
-- Limitadores para a tabela `arquivo`
--
ALTER TABLE `arquivo`
  ADD CONSTRAINT `FK_ARQUIVO_USUARIO` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuario` (`IDUSUARIO`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `USUARIO_ENDERECO_FK` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuario` (`IDUSUARIO`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
