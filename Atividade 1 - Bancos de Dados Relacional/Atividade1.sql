create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
    id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    cargaHora decimal (3,2) not null,
    salario decimal(6,2) not null,
    primary key (id)
);

INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("José", "Gerente", 8.00, 8000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Maria", "Cordenador", 8.00, 5000.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Laura", "Analista de Documentação", 8.00, 2600.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Caio", "Assistente Administrativo", 8.00, 1700.00);
INSERT INTO tb_funcionarios (nome,cargo,cargaHora,salario) VALUES ("Danilo", "Estagiário", 6.00, 900.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

update tb_funcionarios set salario = 1000.00 where id = 5;