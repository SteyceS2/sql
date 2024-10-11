create database ger_join;
use ger_join;

create table funcionarios(
cod_func int auto_increment primary key,
nome varchar (255),
especialidades varchar (255)
);

create table dependentes(
cod_dep int auto_increment primary key,
nome varchar (255),
cod_func int,
foreign key (cod_func) references funcionarios (cod_func)
);

insert into funcionarios(nome, especialidades)
values ("josé", "engenheiro"),
("joão" , "mestre de obras"),
("maria", "contabilidade");

insert into dependentes(nome, cod_func)
values ("pedro" , 1),
("alice" , 1),
("luana" , 3);

select * from funcionarios;
select * from dependentes;

select funcionarios.nome NOME_FUNC, dependentes.nome NOME_DEP
FROM funcionarios
LEFT JOIN dependentes 
ON funcionarios.cod_func  = dependentes.cod_func
WHERE funcionarios.cod_func is null;