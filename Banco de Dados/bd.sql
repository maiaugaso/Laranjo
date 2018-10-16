--tabela preferencia //
create table Preferencia
(
codPreferencia int primary key,
nome varchar(50) not null
)

select * from Preferencia

insert into Preferencia values(1, 'esporte')
insert into Preferencia values(2, 'música')
insert into Preferencia values(3, 'comida')
insert into Preferencia values(4, 'países')
insert into Preferencia values(5, 'roupas')
insert into Preferancia values(6, 'geral')



--tabela pergunta
create table Pergunta(
codPreferencia int not null,
constraint fkcodpref foreign key(codPreferencia) references Preferencia(codPreferencia),
codPergunta int primary key,
codEmocao int not null,
constraint fkCodEmocao foreign key(codEmocao) references Emocao(codEmocao),
valorPergunta ntext not null
)

select * from Pergunta

insert into Pergunta values(1, 1, 9, 'Você tem um time favorito?')
insert into Pergunta values(1, 2, 9, 'Qual desses objetos para futebol você mais gosta?')
insert into Pergunta values(1, 3, 9, 'Você joga futebol?')
insert into Pergunta values(1, 4, 9, 'Qual dessas seleções você acha melhor?')
insert into Pergunta values(1, 5, 9, 'Aconteceu algo com você?')
insert into Pergunta values(1, 6, 9, 'Aconteceu algo com você?')
insert into Pergunta values(1, 7, 9, 'Aconteceu algo com você?')
insert into Pergunta values(1, 8, 9, 'Aconteceu algo com você?')
insert into Pergunta values(1, 9, 9, 'Aconteceu algo com você?')
insert into Pergunta values(1, 10, 9, 'Aconteceu algo com você?')

-- tabela emoção //
create table Emocao(
codEmocao int primary key,
nome varchar(30) not null
)

select * from Emocao

insert into Emocao values(1, 'Apaixonado')
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



-- tabela resposta
create table Possibilidades(
codResposta int primary key,
codPergunta int not null,
constraint fkCodPergunta foreign key(codPergunta) references Pergunta(codPergunta),
valorResposta ntext not null,
codEmocaoGerada int not null,
constraint fkCodEmocaoResp foreign key(codEmocaoGerada) references Emocao(codEmocao)
)


select * from Possibilidades

insert into Possibilidades values (1, 1, 'Sim', 11)
insert into Possibilidades values (2, 1, 'Não', 6)
insert into Possibilidades values (3, 1, 'Talvez', 10)
insert into Possibilidades values (4, 2, 'Chuteira', 1)
insert into Possibilidades values (5, 2, 'Bola', 10)
insert into Possibilidades values (6, 2, 'Uniforme', 7)
insert into Possibilidades values (7, 3, 'Não', 6)
insert into Possibilidades values (8, 3, 'Sim', 11)
insert into Possibilidades values (9, 3, 'Bem pouco', 7)
insert into Possibilidades values (10, 4, 'Brasil', 9)
insert into Possibilidades values (11, 4, 'Argentina', 3)
insert into Possibilidades values (12, 4, 'França', 2)






--tabela respostaResposta
create table Resposta
(
codPergunta int not null,
constraint fkcodperg foreign key(codPergunta) references Pergunta(codPergunta),
codResposta int not null,
constraint fkcodresp foreign key(codResposta) references Possibilidades(codResposta),
respResposta ntext,
)

select * from Resposta

insert into Resposta values (1, 1, 'Que legal!')
insert into Resposta values (1, 2, 'Poxa...')
insert into Resposta values (1, 3, 'Ué... ?')
insert into Resposta values (2, 4, 'Eu também!')
insert into Resposta values (2, 5, 'Peculiar...')
insert into Resposta values (2, 6, 'Uniformes são interessantes, não são?')
insert into Resposta values (3, 7, 'Você deveria, é bem legal!')
insert into Resposta values (3, 8, 'Que legal!')
insert into Resposta values (3, 9, 'Pelo menos um pouquinho.')
insert into Resposta values (4, 10, 'Aí sim!')
insert into Resposta values (4, 11, 'Como assim?')
insert into Resposta values (4, 12, 'Eu não acredito!')

