create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    sabor varchar(20) not null,
    massa varchar(20) not null,
    primary key (id)
);

INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Tradicional");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Sem glúten");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Doce", "Tradicional");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Doce", "Sem glúten");
INSERT INTO tb_categoria (sabor, massa) VALUES ("Salgado", "Integral");

create table tb_pizza(
	id bigint auto_increment,
    recheio varchar(30) not null,
    preco decimal(5,2) not null,
    tamanho varchar(15),
    quantidade int not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Atum", 35.90, "Grande", 1, 2);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Chocolate com Coco", 47.50, "Media", 2, 3);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Calabresa", 21.90, "Brotinho", 2, 2);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Mussarela", 28.70, "Grande", 3, 5);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Banana com Doce de Leite", 61.60, "Grande", 1, 4);
INSERT INTO tb_pizza (recheio, preco, tamanho, quantidade, categoria_id) VALUES ("Portuguesa", 42.00, "Grande", 2, 1);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais. --
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais. --
select * from tb_pizza where preco between 29.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C. --
select * from tb_pizza where recheio like "%C%";

-- Faça um um select com Inner join entre tabela categoria e pizza. --
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica --
select * from tb_pizza right join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;
