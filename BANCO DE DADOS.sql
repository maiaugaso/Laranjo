-- TABELAS --


-- tabela pergunta
create table Pergunta(
codPergunta int primary key,
codEmocao int not null,
constraint fkCodEmocao foreign key(codEmocao) references Emocao(codEmocao),
valorPergunta ntext not null
)

-- tabela emoção
create table Emocao(
codEmocao int primary key,
nome varchar(30) not null
)


-- tabela resposta
create table Resposta(
codResposta int primary key,
codPergunta int not null,
constraint fkCodPergunta foreign key(codPergunta) references Pergunta(codPergunta),
valorResposta ntext not null,
codEmocaoGerada int not null,
constraint fkCodEmocaoResp foreign key(codEmocaoGerada) references Emocao(codEmocao)
)

-- Inserir Emocao

insert into Emocao values(1, 'Feliz')
insert into Emocao values(2, 'Brabo')
insert into Emocao values(3, 'Chorando')
insert into Emocao values(4, 'Debochado')
insert into Emocao values(5, 'Dormindo')
insert into Emocao values(6, 'Em Shok')
insert into Emocao values(7, 'Feliz')
insert into Emocao values(8, 'Irritado')
insert into Emocao values(9, 'Muito Feliz')
insert into Emocao values(10,'Neutro')
insert into Emocao values(11,'Orgulhoso')
insert into Emocao values(12,'Triste')


-- Inserir Pergunta

insert into Pergunta values(1, 1, 'Oi, tudo bem?')
insert into Pergunta values(2, 12, 'Aconteceu algo com você?')


-- Inserir Resposta

insert into Resposta values(1, 1, 'Sim :)', 1)
insert into Resposta values(2, 1, 'Não :(', 12)
insert into Resposta values(3, 1, 'Mais ou menos', 10)
insert into Resposta values(4, 2, 'Prefiro nao falar sobre isso', 3)
insert into Resposta values(5, 2, 'Aconteceram algumas coisas mas já estou melhor', 9)
insert into Resposta values(6, 2, 'Sim e estou muito triste', 3)


select * from Pergunta
select * from Emocao
select * from Resposta