create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
    id bigint auto_increment,
    produto varchar(255) not null,
    marca varchar(255) not null,
    quantidade int not null,
    preco decimal(6,2) not null,
    primary key (id)
);

INSERT INTO tb_produtos (produto,marca,quantidade,preco) VALUES ("Camiseta", "Nike", 5, 120.00);
INSERT INTO tb_produtos (produto,marca,quantidade,preco) VALUES ("Bolsa", "Louis Vuitton", 1, 5000.00);
INSERT INTO tb_produtos (produto,marca,quantidade,preco) VALUES ("Tenis", "Air Jordan", 3, 1500.00);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

update tb_produtos set preco = 4500.00 where id = 2;