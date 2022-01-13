create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    classe varchar(30) not null,
    pontoVida int not null,
    primary key (id)
);

INSERT INTO tb_classe (classe, pontoVida) VALUES ("Bárbaro", 12);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Guerreiro", 10);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Mago", 4);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Clérigo", 8);
INSERT INTO tb_classe (classe, pontoVida) VALUES ("Gatuno", 8);

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    raca varchar(30) not null,
    ataque int not null,
    defesa int not null,
    classe_id bigint,
    primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Haidor","Humano", 6000, 2000, 2);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Edda","Elfo", 2000, 1000, 4);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Ewly","Orc", 1600, 1500, 1);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Torbjorn","Anão", 4500, 1666, 1);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Ymir","Gigante", 3200, 4000, 1);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Ban","Lobisomem", 1600, 1800, 5);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Clistar","Minotauro", 1800, 1500, 5);
INSERT INTO tb_personagem (nome, raca, ataque, defesa, classe_id) VALUES ("Mafe","Humano", 1200, 900, 4);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000. --
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000. --
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C. --
select * from tb_personagem where nome like "%C%";

-- Faça um select com Inner join entre tabela classe e personagem. --
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica --
select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;
