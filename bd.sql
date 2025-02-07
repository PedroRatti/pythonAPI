CREATE USER IF NOT EXISTS 'recrutador'@'localhost' IDENTIFIED BY 'recrutador';

CREATE DATABASE `imoveis_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

GRANT ALL PRIVILEGES ON imoveis_db.* TO 'recrutador'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE `imoveis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco_noite` decimal(10,2) NOT NULL,
  `localizacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO imoveis (nome, imagem, preco_noite, localizacao) VALUES
('Apartamento Beira-Mar', 'https://www.geraldofreitas.com.br/foto_/2021/1048/maceio-apartamentos-beira-mar-jacarecica-16-12-2021_14-48-04-0.jpg', 350, 'Florianópolis, SC'),
('Casa de Praia Jurerê', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/465329394.jpg?k=6b66645ebe23ce9c59c970ff4e53120b088facd6fa38fbe7b64ae57d84404133&o=&hp=1', 450, 'Florianópolis, SC'),
('Loft Lagoa da Conceição', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/252571390.jpg?k=d0cd3297bb2aead0ca7f6a8e8ba7d0a3fdecdac94dee2513de76aab0711078b2&o=&hp=1', 300, 'Florianópolis, SC'),
('Cobertura Vista Mar', 'https://ig3.casteldigital.com.br/evelinpereiracorretora/ig/im/imoveis/50/iazj6ei5q9_835764e3d4348ef7a-16935138375418.jpg', 700, 'Florianópolis, SC'),
('Chalé na Serra', 'https://www.portaldorancho.com.br/wp-content/uploads/2023/05/cabanas-chales-na-serra.jpg', 500, 'Campos do Jordão, SP'),
('Flat em Copacabana', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/478637326.jpg?k=26cd649df32c94ea450a2aca06897e5016330b0ed4c877868bb5cc8ddd5434ab&o=&hp=1', 550, 'Rio de Janeiro, RJ'),
('Casa no Centro Histórico', 'https://dynamic-media.tacdn.com/media/vr-splice-j/03/db/b2/28.jpg?w=800&h=-1', 400, 'Ouro Preto, MG'),
('Pousada à Beira Rio', 'https://images.squarespace-cdn.com/content/v1/5ca69b78ebfc7fa935a56f7e/1559583818070-UDSHIZGRML1AK8IGCCGA/8-nova.jpg?format=2500w', 350, 'Bonito, MS'),
('Casa Colonial', 'https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2012/11/23/paraty1ced.jpg', 600, 'Paraty, RJ'),
('Apartamento no Leblon', 'https://conteudo.imguol.com.br/c/noticias/85/2022/06/28/cobertura-no-leblon-e-vendida-por-r-42-milhoes-1656422539454_v2_900x506.jpg', 800, 'Rio de Janeiro, RJ');
