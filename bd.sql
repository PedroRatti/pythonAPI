CREATE DATABASE `imoveis_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `imoveis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `preco_noite` decimal(10,2) NOT NULL,
  `localizacao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO imoveis (nome, imagem, preco_noite, localizacao) VALUES
('Apartamento Beira-Mar', 'https://via.placeholder.com/300', 350, 'Florianópolis, SC'),
('Casa de Praia Jurerê', 'https://via.placeholder.com/300', 450, 'Florianópolis, SC'),
('Loft Lagoa da Conceição', 'https://via.placeholder.com/300', 300, 'Florianópolis, SC'),
('Cobertura Vista Mar', 'https://via.placeholder.com/300', 700, 'Florianópolis, SC'),
('Chalé na Serra', 'https://via.placeholder.com/300', 500, 'Campos do Jordão, SP'),
('Flat em Copacabana', 'https://via.placeholder.com/300', 550, 'Rio de Janeiro, RJ'),
('Casa no Centro Histórico', 'https://via.placeholder.com/300', 400, 'Ouro Preto, MG'),
('Pousada à Beira Rio', 'https://via.placeholder.com/300', 350, 'Bonito, MS'),
('Casa Colonial', 'https://via.placeholder.com/300', 600, 'Paraty, RJ'),
('Apartamento no Leblon', 'https://via.placeholder.com/300', 800, 'Rio de Janeiro, RJ');
