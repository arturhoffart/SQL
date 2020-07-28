select * from AULA;
delete from AULA
where nome='CODE';

alter table aula alter column id int primary key identity;

create table aula3(
id int primary key identity,
nome varchar(150)
);

insert into aula3 (nome) values('Artur'),('abc'),('sql');

select * from aula3

