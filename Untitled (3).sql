CREATE TABLE `usuario` (
  `nome` varchar(255) PRIMARY KEY,
  `cpf` interger,
  `pedidos` interger
);

CREATE TABLE `loja` (
  `id` varchar(255) PRIMARY KEY,
  `cnpj` interger,
  `usuario` varchar(255)
);

CREATE TABLE `pedidos` (
  `id` varchar(255) PRIMARY KEY,
  `produtos` varchar(255),
  `quantidade` interger
);

ALTER TABLE `usuario` ADD FOREIGN KEY (`nome`) REFERENCES `loja` (`usuario`);

ALTER TABLE `usuario` ADD FOREIGN KEY (`pedidos`) REFERENCES `pedidos` (`id`);
