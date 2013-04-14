CREATE DATABASE  IF NOT EXISTS `scol` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scol`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: scol
-- ------------------------------------------------------
-- Server version	5.1.67-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `parecer`
--

DROP TABLE IF EXISTS `parecer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parecer` (
  `idparecer` int(11) NOT NULL AUTO_INCREMENT,
  `tecnico` int(11) NOT NULL,
  `dataatentimento` datetime DEFAULT NULL,
  `dataconclusao` datetime DEFAULT NULL,
  `parecer` text,
  `chamado` int(11) NOT NULL,
  PRIMARY KEY (`idparecer`),
  KEY `fk_parecer_chamado_idx` (`chamado`),
  KEY `fk_parecer_usuarios_idx` (`tecnico`),
  CONSTRAINT `fk_parecer_usuarios` FOREIGN KEY (`tecnico`) REFERENCES `usuarios` (`idusuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parecer_chamado` FOREIGN KEY (`chamado`) REFERENCES `chamado` (`idchamado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parecer`
--

LOCK TABLES `parecer` WRITE;
/*!40000 ALTER TABLE `parecer` DISABLE KEYS */;
INSERT INTO `parecer` VALUES (1,4,'2013-02-19 15:16:23',NULL,'Obs: Vistoria do Estado dos Computadores',15),(2,2,'2013-02-25 10:33:29',NULL,'Verificar o mais rápido possível.',21),(3,2,'2013-01-31 15:05:09',NULL,'Bruno foi ao local...',30),(4,3,'2013-01-31 15:10:09',NULL,'Foi aberto o chamado para Oi. O técnico da Oi foi a escola e já solucionou o problema.',30),(5,3,'2013-02-05 15:06:05',NULL,'O novo laboratório já foi instalado, contudo, ainda falta a configuração do roteador, que só poderá ser configurado após o reparo na conexão, que será realizado pela Oi.',30),(6,2,'2013-02-25 15:12:11',NULL,'Os técnicos da Oi estiveram no local e solucionaram o problema.',30),(7,2,'2013-02-25 17:43:18',NULL,'Averiguar e informar com o máximo de urgência.',33),(8,2,'2013-02-26 17:43:10',NULL,'Verificar problema.',30),(9,2,'2013-02-27 10:20:39',NULL,'Adicionado outro telefone.',9),(10,2,'2013-02-28 09:48:42',NULL,'Ir ao local.',33),(11,2,'2013-02-28 09:52:34',NULL,'ir ao local',42),(12,2,'2013-03-04 09:56:42',NULL,'Ir ao local',21),(13,2,'2013-02-28 12:05:36',NULL,'Ir ao local.',24),(14,2,'2013-03-01 12:32:30',NULL,'Ir ao local.',43),(15,2,'2013-03-01 12:49:07',NULL,'Ir ao local.',6),(16,2,'2013-03-01 12:58:31',NULL,'Ir ao local.',26),(17,2,'2013-03-01 13:03:04',NULL,'Ir ao local.',36),(18,15,'2013-03-04 13:18:52',NULL,'Trabalho realizado:\r\nInstalação do LE 3.0.\r\nConfiguração de internet.\r\nCabeamento Estruturado\r\nManutenção de computadores.\r\nInstalação de impressora.\r\nSolicitação de reparo junto a operadora Oi, tendo o seguinte protocolo:\r\n8383757256\r\nObs.: Estão funcionando 09 (nove) computadores e um esta com problema na\r\nplaca-mãe e o acesso a internet está prejudicado devido a instabilidade na rede Oi. Dos\r\n11 estabilizadores oferecidos, apenas 8 estão no laboratório.\r\n\r\nPendência:\r\nA rede elétrica precisa ser corrigida, pois, apresenta oscilações, o que danifica os\r\nHDs e fontes das maquinas. O ar-condicionado encontra-se no laboratório, mas,\r\nnão está instalado.',33),(19,2,'2013-03-05 09:52:11',NULL,'Ir ao local.',47),(20,2,'2013-03-05 10:21:08',NULL,'Ir ao local.',10),(21,2,'2013-03-05 10:45:00',NULL,'Problemas com transporte, será reagendado a visita.',26),(22,2,'2013-03-05 10:46:00',NULL,'Problemas com transporte, será reagendada.',6),(23,7,'2013-03-04 11:30:00',NULL,'Não foi possível efetuar a manutenção, pois o laboratório estava em uso.',21),(24,2,'2013-03-05 14:56:21',NULL,'Verificar problemas no laboratório para que possamos responder a um processo nº 0004575-3/2013.',14),(25,13,'2013-03-06 12:33:51','2013-03-06 12:33:51','Trabalho realizado: Abertura de chamado para a equipe da OI para a instalação do circuito\r\nde dados.\r\nPendências:\r\nInstalação do circuito de dados pele equipe da OI;\r\nManutenção da rede elétrica e refrigeração do laboratório.\r\n\r\nObs.: A energia não está adequada para o pleno funcionamento dos equipamentos;\r\nFalta refrigeração do laboratório.',49),(26,13,'2013-03-06 13:56:34','2013-03-06 13:56:34','Trabalho realizado: Reparo nos conectores VGA e USB dos multiterminais. Instalação de\r\ncomputadores pendentes no laboratório.\r\n\r\nPendências: Manutenção da rede elétrica e instalação da internet.\r\n\r\nObs.: Rede elétrica apreseentando instabilidade de tensão, ocasionando quedas e desliga-\r\nmento dos computadores quando os condicionadores de ar disparam;\r\nFaltam 3 cabos de força em um dos computadores;\r\nBancadas estreitas para comportar quatro alunos.',51),(27,7,'2013-03-06 15:32:35','2013-03-06 15:32:35','Foi feito uma instalação do S.O Linux 3.0,em um micro e a configuração da rede.Dois micros etão sem funciona devido problema na placa-mãe e mas dois micros ficaram desativados devido a falta de cabo de foça e de tomadas.\r\nCom tudo ficaram funcionando apenas onze micro e com acesso a internet.',21),(28,7,'2013-03-06 15:55:50','2013-03-06 15:55:50','Foi instalado o S.O linux 3.0 em sei micros e a configuração em três.Um micro esta com problema no HD danificado devido a isso não foi possível faz a instalação do S.o linux 3.0,a dois micros com defeito na placa de rede Wireless,devido a isso não foi possível fazer a configuração da rede.E dois micros estão parados devido a falta de estabilizadores.\r\nCom tudo ficaram funcionando seis micros e com acessos a internet.',3),(29,3,'2013-03-08 11:00:51','2013-03-08 11:00:51','A Escola encontra-se em reforma e ainda não foi instalado o novo laboratório.\r\n\r\nA Escola está utilizando a impressora Lexmark do pregão 71/2010, sem autorização da CCE.',46),(30,3,'2013-03-08 11:56:58','2013-03-08 11:56:58','Ao chegar na Escola, foi verificado que um micros ligava, contudo, com o passar do tempo ele desligava sozinho.\r\nNão foi possível realizar o devido reparo, pois a placa-mãe se encontra com capacitores danificados (estourados).',1),(31,6,'2013-03-11 09:44:33',NULL,'Aguardando suporte técnico da autorizada.',42),(32,6,'2013-03-11 12:11:04','2013-03-11 12:11:04','Trabalho Realizado:\r\n\r\n- Foi verificado que dos 11 computadores, apenas 06 estavam funcionando;\r\n- Foram encontradas 02 máquinas do pregão 045/2007, cujas quais, segundo o atual diretor, foram entregues pela Regional de Ensino;\r\n\r\nPendências:\r\n\r\n- Após testar todos os estabilizadores, ficou constatado que apenas 02, de um total de 09, estão funcionando, ou seja, das 06 máquinas que estão funcionando, poderão ser utilizadas apenas 02, pois, apenas 02 estabilizadores estavam funcionando;\r\n- O atual modem não liga, podendo ser problema do mesmo ou da fonte dele;\r\n- Além disso, foi observado que os computadores estavam muito empoeirados;\r\n- Foi informado pelo atual diretor que a sala onde estão instalados os computadores é provisória, pois, este mesmo ambiente está sendo utilizado como depósito de livros e sala dos professores simultaneamente;\r\n- 10 dos 11 mouses que foram encontrados na sala, por serem muito antigos (exceto por 01 deles), estavam sem funcionar;\r\n- Além disso, foi constatado que a rede elétrica da sala é improvisada e a mesma não conta com nenhum condicionador de ar para resfriamento do ambiente.',26),(33,7,'2013-01-03 00:00:00',NULL,'Instalação do Linux Educacion al 4.0 em dois Multiterminal. Configuração da rede em doze micros.',58),(34,7,'2013-01-08 10:00:00',NULL,'instalação do linux Educacional 4.0 em  um micro  .Configuração da rede  em dezesseis multiterminais.	 Ficaram funcionando dezesseis multiterminal e com acesso a internet. o servidor está com  um problema que sera  encaminhados a autorizada.',60),(35,7,'2013-03-13 09:44:59',NULL,'Forão instalador o S.O linux 4.0 em cinco micros e no Servidor,com as configuração da rede Wireless nas seis maquina.\r\nTambém foi feita a configuração da impressora.\r\nUm micro de estava com problema na placa de vídeo off-bord.\r\nUm micro estava com prolema na placade rede Wireless.\r\nestavão faltando sete mouses do Pregão 83/2008,também esta falndo duas antenas Wireless.\r\ncom tudo ficaram funcionando quatorzes micros e trezes com  acesso a internet. ',5),(36,15,'2013-03-13 09:48:16','2013-03-13 09:48:16','Foram recuperadas 3 fontes e 3estabilizadores, e reinstalado o sistema operacional LE 3.0, ficando 10 pc\'s funcionando e com internet. Na referida escola encontra-se instalado o link GESAC sem utilização, que poderia ser removido para uma escola da Zona Rural.',50),(37,15,'2013-03-13 09:58:27','2013-03-13 09:58:27','A direção da escola informou que a internet esta funcionando.\r\nInformação dada pelo SR ìtalo por telefone no dia 13/03/2013.\r\nSeverino',33),(38,2,'2013-03-13 14:49:53',NULL,'Trabalho realizado: configurado em todos os micros com internet.\r\n\r\nPendências:\r\n1º. - Encontrado o Windows 7, não licenciado, instalado em um dos micros. Esse micro foi formatado e instalado o LE 4.0 e o diretor foi orientado a não mais permitir que isso volte  a acontecer. \r\n2º. - Muitos micros antigos, estão entulhados no laboratório de informática e ocupando um espaço que podia ser reutilizado.\r\n3º. - O roteador não foi encontrado no laboratório de informática.\r\n4º. - Os terminais do micro Daruma de nº serial 00257590 não estão mostrando imagens.\r\n5º. - Os terminais do micros Positivo de nº serial 1A074RK0J não estão mostrando imagens.',59),(39,2,'2013-03-14 14:03:14',NULL,'Atualizar chamado...',10),(40,2,'2013-03-14 14:03:37',NULL,'Atualizar chamado...',36),(41,2,'2013-03-14 14:03:55',NULL,'Atualizar chamado...',43),(42,2,'2013-03-14 14:04:18',NULL,'Atualizar chamado...',47),(43,2,'2013-03-14 14:04:42',NULL,'Atualizar chamado...',57),(44,7,'2013-03-14 14:14:05',NULL,'Devido o avanço da hora,não foi possivel concluir o serviço,será agendada uma visita.',9),(45,6,'2013-03-14 15:55:03',NULL,'Trabalho realizado:\r\n\r\n- Restauração do terminal servidor para os padrões de fábrica da CCE;\r\n- Instalação e configuração da impressora no terminal servidor;\r\n- Instalação e configuração do Userful Multiplier nas estações de trabalho.\r\n\r\nPendências:\r\n\r\n- Uma máquina com defeito na placa de vídeo externa (Seriais: BNQN3K00GUAOYI00MM e S/N: 814)\r\n- Uma máquina com problema na placa de rede sem fio (Seriais: BNQN3L00GUAOYI039I e S/N: 4230)\r\n\r\nObservações:\r\n\r\n- A antena de captação de sinal sem fio da máquina que está com problema na placa de vídeo foi arrancada e quebrada forçosamente.',57),(46,6,'2013-03-14 16:28:59',NULL,'Trabalho realizado:\r\n\r\n- Limpeza externa dos terminais;\r\n- Reorganização dos periféricos.\r\n\r\nPendências:\r\n\r\n- Placas de vídeo externas da única estação multiterminal da escola (Número de Série: 00212588) sem gerar imagem para os seus respectivos monitores conectados.\r\n\r\nObservações:\r\n\r\n- A diretora da escola não se encontrava na mesma quando da chegada dos técnicos do PROINFO, por isso os técnicos Bruno Patrício Leal e Maharishy Gleyderth Teixeira de Lima Barbosa assinaram o relatório.',43),(47,6,'2013-03-14 17:13:32',NULL,'Foi executado parcialmente o trabalho, sendo deixados 9 (nove) micros funcionando e acessando a internet, faltando  portanto um micro para manuntençào. O trabalho não foi finalizado porque o transporte precisou sair com urgência.',2),(48,4,'2013-03-14 17:41:19','2013-03-14 17:41:19','Trabalho realizado:\r\n- Configuração e distribuição da internet para todos os micros.\r\nObs: Dezessete terminais estão funcionando e acessando a internet.\r\n\r\nPendências:\r\n- Segundo a Diretora, um monitor foi levado para reparo pela autorizada, e até agora não voltou.\r\n- Estão faltando, um Audio-Hub, um teclado e dois mouses.\r\n- Um micro não está sendo utilizado, devido a falta de um teclado USB.\r\n- Dois teclados foram danificados por conta de infiltração de agua na sala do laboratorio, contudo a infiltração ja foi resolvida.  \r\n\r\n',30),(49,6,'2013-03-14 17:46:08','2013-03-14 17:46:08','Trabalho realizado:\r\n\r\n- Abertura de algumas máquinas para verificar quais os problemas delas.\r\n\r\nPendências:\r\n\r\n- Três máquinas estão com problemas na fonte de alimentação de energia e nas placas-mãe;\r\n- Uma máquina está com problemas apenas na fonte de alimentação;\r\n\r\nObservações:\r\n\r\n- O switch não foi encontrado na escola.',47),(50,2,'2013-03-18 09:25:12',NULL,'indo ao local.',6),(51,2,'2013-03-18 11:26:02','2013-03-18 11:26:02','Trabalho realizado:\r\nReconfigurado o roteador.\r\nReinstalado o User Full de um micro.\r\nTodos os micros estão com acesso à internet.\r\n\r\nPendências:\r\nExiste oscilação elétrica.\r\n\r\nObs.:\r\nO Switch foi recolhido para ser enviado à Escola Fazenda Buracão.',6),(52,2,'2013-03-18 15:48:11',NULL,'Objetivo de Visita à Escola:\r\nInstalar o Switch e configurar internet para os micros UCA.\r\n\r\nTrabalho realizado:\r\nInstalado o switch de 16 portas.\r\nConfigurado o micro multiterminal com acesso a internet.\r\nConfigurado a rede wireless para os micros UCA.\r\n\r\nPendências:\r\nMesmo com os equipamentos configurado, os netbooks UCA não acessam a rede. Encontramos um contado do MINASCONTEOL 0800-604-4047.\r\n',68),(53,15,'2013-03-19 08:43:55','2013-03-19 08:43:55','Foram reinstalados o S.O e configurado a internet, ficando 19 PC\'s funcionando e 01 com fonte queimada.',61),(54,15,'2013-03-19 09:04:46','2013-03-19 09:04:46','Visita realizada em 18/03/2013\r\nFoi realizado Configuração de internet; Substituição de uma tomada elétrica; Configuração. \r\n\r\nOBS: O roteador do Proinfo pregão 71/2010 está queimado; A impressora, o servidor de impressão e o roteador foi configurado por terceiro, devido a isto o acesso a internet estava prejudicado.',69),(55,15,'2013-03-19 09:14:55','2013-03-19 09:14:55','Visita realizada em 13/03/2013\r\n\r\nFoi realizado Instalação de L.E. 4.0; Configuração de internet nos computadores; recuperação em 1 estabilizador; recuração de 4 fontes e instalação de impressora.\r\n\r\nObs: Estão funcionando e acessando a internet 10 computadores, porém as baterias dos gabinetes estão descarregadas, portanto é pressionar F1 para que o sistema inicialize; É necessária a compra de um cabo de força para a impressora e a instalação de uma tomada adequada.',70),(56,15,'2013-03-19 09:25:48','2013-03-19 09:25:48','Foi finalizado em 11/03/2013\r\n\r\nFoi Realizado manutenção nos computadores, fontes e estabilizadores; onde foi realizado a recuperação de três fontes, três estabilizadores e uma recuperação de sistema, Estão funcionando e acessando a internet 10 computadores.\r\n\r\nObs: A impressora encontra-se queimada, pois foi ligada de forma incorreta (em 220V).',71),(57,15,'2013-03-19 09:56:45','2013-03-19 09:56:45','Visita realizada em 07/03/2013\r\n\r\nFoi Realizado: instalação do L.E.; configuração da inernet nos computadores; Abertura de chamado para a positivo e Oi.\r\n\r\nEstaão funfionando e acessando a internet 22 termnais por meio de conexão wireless.\r\n\r\nObs: O técnico da Empresa Positivo veio a Escola e instalou Linux 3.0 no computador servidor;\r\n5 pcs estão desinstalados por falta de periféricos, sendo que 2 desses estão com falta de peças internas, o que impossibilita seu funcionamento;\r\nO roteador Dlink apresenta oscilações, logo funcionamento da internet esta sendo prejudicado, aconselha-se a troca do mesmo;\r\nAlgumas maquinas precisam que seja logado como o usuário professor antes, para que a internet funcione com o usuário aluno, o fato foi informado ao responsável pelo laboratório.',73),(58,6,'2013-03-19 10:56:54',NULL,'Ir ao local.',11),(59,6,'2013-03-19 11:04:42',NULL,'Ir ao local.',12),(60,6,'2013-03-19 11:05:11',NULL,'Ir ao local.',27),(61,6,'2013-03-19 11:05:54',NULL,'Ir ao local.',17),(62,6,'2013-03-19 11:09:13',NULL,'Ir ao local.',34),(63,6,'2013-03-19 11:09:57',NULL,'Ir ao local.',35),(64,6,'2013-03-19 11:11:25',NULL,'Ir ao local.',29),(65,6,'2013-03-19 11:12:01',NULL,'Ir ao local.',62),(66,6,'2013-03-19 11:12:37',NULL,'Trabalho realizado:\r\nConfigurado o roteador e duas estações multiterminais;\r\nTodos os micros ficaram com acesso à internet.\r\n\r\nPendências:\r\nO micro de número serial 1A159S917 não está reconhecendo o dispositivo de rede sem fio.\r\n\r\nObservações:\r\n\r\nA sala está muito suja, portanto, necessita-se fazer limpeza na mesma;\r\nO modem estava ligado diretamente na tomada elétrica, o que estava ocasionando a perda de sinal devido às oscilações elétricas.',11),(67,2,'2013-03-19 13:08:15',NULL,'Trabalho realizado:\r\nConfigurado o roteador;\r\n\r\nPendências:\r\nNúmero de Série (18 dígitos): BNQNRR00GUAOYL022U, SN: 2694, Descrição do Problema: Algumas  teclas do teclado não funcionam.\r\nNúmero de Série (18 dígitos): BNQNNN00GUAPQB00OX, SN: 897, Descrição do Problema: Algumas  teclas do teclado não funcionam.\r\n\r\nObservações:\r\nA sala está muito suja, portanto, necessita-se fazer limpeza na mesma;',27),(68,6,'2013-03-19 15:43:53','2013-03-19 15:43:53','Trabalho realizado:\r\nReconfigurado o roteador;\r\nFormatados dois computadores.\r\n\r\nObservações:\r\nO roteador foi reconfigurado, pois a configuração original do mesmo foi modificada.',75),(69,6,'2013-03-20 16:47:37',NULL,'Trabalho realizado:\r\nNão houve.\r\n\r\nPendências:\r\n- A escola possui muita oscilação elétrica e isso está impossibilitando que os micros fiquem ligados. Devido a esse problema, quase todos os micros estão com os dispositivos danificados. Depois de uma conversa com a diretora, ficou acertado que ela solucionaria o problema elétrico primeiro, para que se possa (tentar) solucionar os problemas dos micros.\r\n- A sala que estava destinada para funcionar como laboratório de informática possui uma área de 4m x 4m, porém, segundo a diretora, a escola possui um espaço amplo que pode funcionar como laboratório.',34),(70,6,'2013-03-20 16:50:31','2013-03-20 16:50:31','Atualização de status.',34),(71,6,'2013-03-20 17:53:00','2013-03-20 17:53:00','Trabalho realizado:\r\n\r\n- Configurado o roteador.\r\n\r\nObservações:\r\n\r\n- Quando se tenta acessar a página do Google ou quaisquer outras páginas que não sejam aquelas memorizadas no próprio navegador de qualquer micro da escola, aparece uma mensagem pedindo para instalar um suposto plugin do Adobe Flash Player; não foi baixado tal plugin, porém o acesso para a página solicitada foi automaticamente cortado. Imaginando que o problema estava sendo ocasionado no roteador, foi feita a conexão direta de um netbook com o modem e foi verificado que o problema persistiu.',17),(72,6,'2013-03-21 16:23:58',NULL,'Trabalho realizado:\r\n- Reconfigurado o roteador;\r\n- Restaurada a configuração do computador servidor para a configuração padrão de fábrica da CCE;\r\n\r\nPendências:\r\n- Número de Série (18 dígitos): BNQNPR00GUAOYL08VP, SN: 11509, Descrição do Problema: Um dos terminais veio sem teclado. Segundo o técnico da CCE que montou o laboratório, seria enviado um novo teclado, porém, até o presente momento, a escola ainda não o recebeu;\r\n- Número de Série (18 dígitos): BNQNNN00GUAPQB01J1, SN: 1981, Descrição do Problema: O monitor (SN: Z0DCHXJC319455P) de um dos terminais não está gerando imagem;\r\n- Número de Série (18 dígitos): BNQNRR00GUAOYL026D, SN: 2821, Descrição do Problema: As tomadas fêmeas do estabilizador (SN: 5803790617) vieram com os fios internos à mostra.\r\n\r\nObservações:\r\n- Foi feita a reconfiguração do roteador, pois o mesmo foi encontrado com sua configuração original alterada;\r\n- Vários ambientes da escola (diretoria, secretaria, biblioteca) estavam utilizando a internet do laboratório, porém foram retirados os cabos que transmitiam a internet para os citados ambientes escolares porque a conexão estava muito lenta. Ficou recomendado aos responsáveis pelo laboratório que não mais os colocassem sem autorização prévia do PROINFO.',62),(73,15,'2013-03-22 11:14:18','2013-03-22 11:14:18','Trabalho realizado em 26 e 27 de fevereiro de 2013, foi realizado:\r\n\r\nInstalação do L.E. 4.0; configuração da internet; manutenção de computadores.\r\n\r\nFicaram funcionando 36 terminais, mas, no lab 03 estava faltando um mouse USB do terminal Daruma.\r\n',72),(74,2,'2013-03-25 10:08:28',NULL,'Ir ao local.',78),(75,15,'2013-03-25 10:41:07','2013-03-25 10:41:07','Configuração de Modem;\r\nConfiguração da Internet;\r\nInstalação de impressora.\r\nEstão funcionando 25 terminais com Internet.\r\n- Pregão 038/2006 (09 PC\'s).\r\n- Pregão 71/2010 (19 terminais).\r\nFoi retirado por terceiro a fonte de um PC do 038/2006.\r\nTodos os Tecnicos visitarão a escola.',74),(76,2,'2013-03-25 11:33:05','2013-03-25 11:33:05','Trabalho realizado:\r\n•	Formatados todos os micros;\r\n•	Realizada a limpeza de componentes internos de alguns gabinetes para solucionar problemas de não inicialização dos computadores;\r\n•	Instalação do Linux Educacional 4.0 em todos os micros;\r\n\r\nPendências:\r\n•	O roteador está queimado, confirmando o que foi relatado pelos próprios funcionários da escola quando do agendamento da visita à escola;\r\n•	O modem encontra-se com problema para se conectar ao circuito de dados da Oi, porém a diretora foi orientada a solicitar a visita dos técnicos da referida empresa;\r\n•	Um micro está apresentando defeito no processador ou placa-mãe, porém o mesmo encontra-se fora da garantia;\r\n•	A sala está muito suja, porém a diretora se propôs a fazer limpeza após a nossa saída;\r\n•	O laboratório de informática estava sendo usado como depósito de materiais, porém a diretora solicitou a retirada destes materiais.\r\n',29),(77,2,'2013-03-25 13:51:59','2013-03-25 13:51:59','Trabalho realizado:\r\n1.	Configurado à internet e todos os micros estão funcionando com acesso.\r\n2.	Formatado todos os micros com LE 3.0, pois eles estavam usando o Windows 7 não licenciado.\r\n\r\nPendências:\r\n1.	A diretora não soube dizer quem autorizou a instalação do Windows nos micros.\r\n2.	Quatro micros estão com fontes de alimentação com problemas.\r\n3.	Dois micros estão com problemas nos Discos Rígidos.\r\n4.	Dois micros estão com problemas nas memórias DDR2.\r\n5.	O laboratório de informática possui muita oscilação elétrica e isso pode ser a causa dos problemas de alguns micros.\r\n',35),(78,7,'2013-03-25 14:57:34','2013-03-25 14:57:34','Foram executados serviços de manutenção em dez computadores,sem que cinco computadores apresentaram defeitos :\r\nDuas maquinas com placa-mãe defeituosas.\r\nDuas maquinas com a placa-mãe e fonte defeituosa.\r\nUma máquina apresentando problema com a placa de Vídeo interna.\r\nA Escola esta sem o ponto de Internet, mas a direção da escola ficaram de entra em contato com o MEC e depois com a OI para refazer o ponto da Internet da escola.\r\nCom tudo ficaram funcionando cinco computadores e sem acessos a internet.  ',9),(79,7,'2013-03-26 09:05:05',NULL,'Não foi possível,realiza a configuração do roteador divido a falta de conhecimento no equipamento do pregão 71/2010',14),(80,6,'2013-03-26 09:16:17',NULL,'Trabalho realizado:\r\n- Executados procedimentos de limpeza de componentes internos ao computador (memórias e placas de rede sem fio) em quatro computadores;\r\n- Estabelecida a conexão de todos os computadores com o roteador;\r\n- Reconfiguração da senha da rede do roteador;\r\n- Acompanhamento de abertura de chamado com a Oi.\r\n\r\nPendências:\r\n- Um dos computadores não foi possível deixar funcionando pela falta de um cabo de força de energia que deveria estar conectado tanto no computador quanto no estabilizador mais próximo dele;\r\n- Além disso, esse mesmo computador está sem um teclado;\r\n- O modem não está conseguindo captar a conexão com o fio de internet instalado na escola, por isso, a diretora foi orientada que abrisse um chamado juntamente com a Oi para que a mesma venha averiguar a situação e resolver o problema.\r\n\r\nObservações:\r\n- Uma das antenas captadoras de sinal sem fio foi arrancada de um dos computadores, porém o mesmo, ainda assim, consegue estabelecer a conexão com o roteador.',4),(81,2,'2013-03-26 10:19:07',NULL,'Analisar e tentar solucionar os problemas do laboratório de informática.',25),(82,2,'2013-03-26 10:28:45',NULL,'Solicitar a assinatura de Gayne (responsável pelo laboratório) e Verônica (Presidente do conselho).',25),(83,11,'2013-03-26 13:48:50',NULL,'Ir ao local.',13),(84,11,'2013-03-26 13:52:13',NULL,'Ir ao local',16),(85,7,'2013-03-26 14:34:23','2013-03-26 14:34:23','Foram feita duas restauração do S.O Linux Educacional 4.0 e a configuração da redes dos mesmo.\r\nCom tudo firam funcionando todos os dezoito multiterminais e um Servidor e todos com acessos a internet.',15),(86,6,'2013-03-26 15:09:39','2013-03-26 15:09:39','Trabalho realizado:\r\n- Reconfigurado o roteador, pois o mesmo estava com sua configuração inconsistente e alterada;\r\n- Configurado o acesso à internet em 15 estações multiterminais.\r\n\r\nPendências:\r\n- Duas estações multiterminais não puderam ter o acesso à internet configurado devido à falta de tomadas elétricas disponíveis para ligar tais estações. Recomendou-se a compra de filtros de linha para que seja feita a ligação das citadas estações.\r\n- Número de Série (18 dígitos): BNQNO500GUAOVR01NQ, SN: 2150, Descrição do Problema: O terminal servidor está apresentando uma mensagem logo quando é ligado alertando que o computador foi aberto, porém, o lacre está intacto e, segundo os responsáveis pelo laboratório de informática, não foi feita nenhuma manutenção não autorizada pela CCE neste computador;\r\n- Número de Série (18 dígitos): BNQNPR00GUAOYL08RW, SN: 11372, Descrição do Problema: A estação multiterminal está apresentando uma mensagem logo quando é ligado alertando que o computador foi aberto, porém, o lacre está intacto e, segundo os responsáveis pelo laboratório de informática, não foi feita nenhuma manutenção não autorizada pela CCE neste computador.\r\n\r\nObservações:\r\n- A escola adquiriu outro roteador e o mesmo estava instalado e transmitindo a internet sem fio sem controle nenhum, pois, segundo informações fornecidas pelo responsável pelo laboratório de informática, até mesmo, os alunos da escola tinham acesso à internet pela rede desse roteador.',14),(87,2,'2013-03-27 12:54:24',NULL,'Voltar a escola e finalizar o atendimento.',2),(88,7,'2013-04-01 09:13:32',NULL,'Foram feita a Instalação do S.O 4.0 no Servidor,a instalação do programa Userfulem todos os computadores.\r\nFoi feita uma restauração do S.O 4,0.\r\nDois micro do Pregão 38/2006 estam com defeito na fonte,Um micro esta com problema no HD.\r\nUm micro do pregão 38/2006 se encontrava no laboratóio sem a Placa-Mãe e também sem o N/S.\r\nDevido a falta de tempo não foi possivel configurar o roteador,foi a vizado a direção retornaremos para finalizar nosso trabalho.\r\n',13),(89,4,'2013-04-02 09:45:19',NULL,'Contudo ficaram funcionando os dezoito multiterminais e o servidor.\r\nFoi configurado o roteador, porém foi aberto um chamado na Oi para configuração do modem (02/04/2013).\r\n',13),(90,6,'2013-04-02 15:49:27',NULL,'Os técnicos Fernando e Joana estão se dirigindo à escola.',80);
/*!40000 ALTER TABLE `parecer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-02 19:06:24
