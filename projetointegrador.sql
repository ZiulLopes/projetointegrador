-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05-Dez-2016 às 02:31
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
(3, 1, 1),
(3, 2, 1),
(3, 4, 1),
(2, 3, 1),
(4, 1, 1),
(4, 3, 1),
(3, 8, 1),
(2, 1, 1),
(1, 2, 1),
(8, 2, 1),
(8, 3, 1),
(9, 3, 1),
(6, 8, 0),
(6, 4, 1),
(6, 5, 0),
(6, 2, 1),
(12, 4, 1),
(4, 12, 1),
(5, 1, 1),
(13, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `IDARQUIVO` int(11) NOT NULL,
  `IDUSUARIO` int(11) DEFAULT NULL,
  `DATAENVIOARQUIVO` datetime DEFAULT NULL,
  `NOMEARQUIVO` varchar(50) DEFAULT NULL,
  `DESCRICAO` varchar(2000) DEFAULT NULL,
  `PATHARQUIVO` varchar(300) NOT NULL,
  `ATIVO` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `arquivo`
--

INSERT INTO `arquivo` (`IDARQUIVO`, `IDUSUARIO`, `DATAENVIOARQUIVO`, `NOMEARQUIVO`, `DESCRICAO`, `PATHARQUIVO`, `ATIVO`) VALUES
(1, 3, '2016-11-25 00:00:00', 'Primeiro arquivo', 'Lorem ipsum Do commodo Excepteur mollit officia veniam occaecat fugiat ullamco officia labore Ut cupidatat. Lorem ipsum Veniam non ut tempor occaecat exercitation culpa ullamco id. Lorem ipsum Dolore incididunt Duis ullamco sed commodo sit id. Lorem ipsum Commodo nisi Excepteur Ut dolore sit occaecat aute reprehenderit ullamco elit. Lorem ipsum In velit deserunt ex dolore deserunt dolor cupidatat ea.\n\nLorem ipsum Laborum non enim et laboris esse ut sunt non in ex in est.\n\nLorem ipsum Excepteur adipisicing cupidatat aute do in consequat adipisicing proident elit. Lorem ipsum Occaecat magna sed minim id nostrud irure cupidatat amet culpa. Lorem ipsum Ad dolore elit eiusmod tempor voluptate elit qui.', '/FilesUploaded/0001.pdf', 0),
(2, 3, '2016-11-25 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1),
(3, 3, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 0),
(4, 4, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 1),
(5, 1, '2016-11-25 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1),
(6, 2, '2016-11-25 00:00:00', 'TEste', 'sdfsdafasdfasdf asdfsadfsdafasdfasdfaas asdf asdfa a a a dffasdfsadf', '/FilesUploaded/0001.pdf', 1),
(7, 4, '2016-11-23 00:00:00', '##02', 'Arquivo 2', '/FilesUploaded/0001.pdf', 1),
(8, 2, '2016-12-03 19:10:53', '20161126_115416.jpg', 'sdajfasdf asdf asdfasdfasdf', '/FilesUploaded/20161126_115416.jpg', 1),
(9, 3, '2016-12-03 19:37:55', '20161126_164437.jpg', NULL, '/FilesUploaded/20161126_164437.jpg', 0),
(10, 3, '2016-12-03 19:44:50', '20161126_231941.jpg', NULL, '/FilesUploaded/20161126_231941.jpg', 0),
(11, 3, '2016-12-03 19:45:29', '20161126_115256.jpg', NULL, '/FilesUploaded/20161126_115256.jpg', 1),
(12, 3, '2016-12-03 20:47:38', 'cropped (1).jpg', NULL, '/FilesUploaded/cropped (1).jpg', 0),
(13, 3, '2016-12-03 20:49:46', 'cropped.jpg', 'Cropped!!!', '/FilesUploaded/cropped.jpg', 1),
(14, 3, '2016-12-03 20:51:52', 'Realdebrid.txt', 'Sei la que esse arquivo ta fazendo aqui.', '/FilesUploaded/Realdebrid.txt', 1),
(15, 3, '2016-12-03 20:52:39', 'jquery.js', NULL, '/FilesUploaded/jquery.js', 1),
(16, 3, '2016-12-03 20:53:15', 'IMG-20161012-WA0006.jpg', NULL, '/FilesUploaded/IMG-20161012-WA0006.jpg', 1),
(17, 3, '2016-12-03 20:53:39', 'Paradoxo onipotente.txt', 'Segundo teste que estou fazendo.', '/FilesUploaded/Paradoxo onipotente.txt', 1),
(18, 3, '2016-12-03 20:54:53', 'capa.docx', NULL, '/FilesUploaded/capa.docx', 1),
(19, 8, '2016-12-03 21:01:10', 'cropped.jpg', NULL, '/FilesUploaded/cropped.jpg', 1),
(20, 2, '2016-12-03 22:10:54', 'capa (1).docx', NULL, '/FilesUploaded/capa (1).docx', 1),
(21, 6, '2016-12-03 23:02:58', 'img093.jpg', NULL, '/FilesUploaded/img093.jpg', 1),
(22, 4, '2016-12-04 00:25:58', 'Ex01.xlsx', NULL, '/FilesUploaded/Ex01.xlsx', 1),
(23, 4, '2016-12-04 00:26:16', 'Ex03.xlsx', NULL, '/FilesUploaded/Ex03.xlsx', 1),
(24, 4, '2016-12-04 00:31:53', 'batFelipe_copy22[1].jpg', NULL, '/FilesUploaded/batFelipe_copy22[1].jpg', 1),
(25, 4, '2016-12-04 00:32:17', 'batFelipe_copy[1].jpg', NULL, '/FilesUploaded/batFelipe_copy[1].jpg', 1),
(26, 12, '2016-12-04 21:26:52', 'IMG-20161012-WA0006.jpg', NULL, '/FilesUploaded/IMG-20161012-WA0006.jpg', 1),
(27, 12, '2016-12-04 22:03:01', 'Deniss.jpg', NULL, '/FilesUploaded/Deniss.jpg', 1),
(28, 13, '2016-12-04 22:20:36', 'red-solo-cup.jpg', NULL, '/FilesUploaded/red-solo-cup.jpg', 1);

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
  `SOBREMIM` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `NOMEUSUARIO`, `DATANASCUSUARIO`, `SEXOUSUARIO`, `EMAILUSUARIO`, `SENHAUSUARIO`, `TELEFONEUSUARIO`, `DATACADASTRO`, `ATIVO`, `PATHIMAGEM`, `OBJETIVO`, `PERFIL`, `SOBREMIM`) VALUES
(1, 'Jhon', '1994-11-08', 'M', 'jhon@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/10272575.jpg', 'Nosso objetivo é compartilhar informação.', NULL, NULL),
(2, 'Rodolfo Dona Hosp', '1989-09-17', 'M', 'rod@email.com.br', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/14650674.jpg', NULL, NULL, ''),
(3, 'Luiz Fernando Lopes', '1991-11-21', 'M', 'lopesluiz_@hotmail.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/11885160.jpg', 'sdfsdf', '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account o', 'sdfasdfsdfasdfsdfasdfsadfsadf sdfsadfsaddsfsdf'),
(4, 'Felipe Augusto Teixeira Fernandes', '1995-11-09', 'F', 'felipa@email.com.br', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/14708375.jpg', NULL, 'O Importante é o que importa', NULL),
(5, 'Eva Luna', '1991-11-21', 'F', 'eva@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/21321231321.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(6, 'Bianca Carvalho', '1991-11-21', 'F', 'bianca@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/4654564464.jpg', 'sdfsadfsdfsdfsdafsdf', 'fgadfsff', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(7, 'Asshylay Munia', '1991-11-21', 'F', 'ashy123@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/87897979.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(8, 'Alicy Email Nome', '1991-11-21', 'F', 'alicya@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/171741717.jpg', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ip', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(9, 'Maria Blinda', '1991-11-21', 'F', 'maria@email.com', 'sys123', '433333333', '2016-11-23 00:00:00', 1, '/ImagesUploaded/4654564464.jpg', '', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui r', 'ae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem '),
(10, 'Raquel Emily dos Santos', '2016-04-21', 'M', 'raquel_emily@signainfo.com.br', '123', '111111111', '2016-12-04 18:38:51', 1, '~/', 'sdjfk', 'sdjfk', 'sdjfk'),
(11, 'Willian Lopes', '2016-01-11', 'M', 'will@email.com.br', '123', '2129322300', '2016-12-04 19:14:03', 1, NULL, NULL, 'Esse é um teste que estou fazendo.', 'Sou apenas um teste111'),
(12, 'Alverio', '1865-02-11', 'M', 'alve@email.com', '132', '33333333', '2016-12-04 21:22:06', 1, '/ImagesUploaded/54601140.jpg', NULL, NULL, NULL),
(13, 'Leonardo Benjamin Ricardo Monteiro', '2016-12-12', 'M', 'leonardo_benjamin@wnetrj.com.br', '123456', '(86) 3907-1583', '2016-12-04 22:18:22', 1, '/ImagesUploaded/18050494.jpg', NULL, 'Acabei de criar esse perfil', NULL);

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
  MODIFY `IDARQUIVO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `IDENDERECO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
