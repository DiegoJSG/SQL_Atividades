INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Diego',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	29,
	100.50,
	1.79,
	TRUE,
	'1993-10-21',
	'17:30:00',
	'2020-02-08 12:32:45'
);

SELECT nome,idade,
	matriculado_em as quando_se_matriculou

	FROM aluno;
	
SELECT nome as "nome do aluno",idade,
	matriculado_em as quando_se_matriculou

	FROM aluno;
	
select * from aluno;

insert into aluno (nome) values ('Cicero Ferreira');
insert into aluno (nome) values ('Maria Natividade');
insert into aluno (nome) values ('Roseane Guedes');
insert into aluno (nome) values ('Kiki');

select * from aluno
where nome != 'Diego';

select * from aluno
	where nome like 'D%';
	
select * from aluno
where cpf is not null

select * from aluno
where nome like 'D%'
and cpf is not null ;

select * from aluno
where nome like 'Diego'
or nome like 'Rose%'


CREATE TABLE curso(
	id integer not null,
	nome varchar(255)
);

insert into curso (id,nome) values (null, null);

select * from curso;


drop table curso;

CREATE TABLE curso(
	id integer not null,
	nome varchar(255) not null
);
	
insert into curso (id,nome) values (1, 'HTML');

select * from curso;

drop table curso;

CREATE TABLE curso(
	id integer not null unique,
	nome varchar(255) not null
);

insert into curso (id,nome) values (1, 'HTML');
insert into curso (id,nome) values (2, 'JavaScript');

drop table curso;

CREATE TABLE curso(
	id integer not null primary key,
	nome varchar(255) not null
);

insert into curso (id,nome) values (1, 'HTML');
insert into curso (id,nome) values (2, 'JavaScript');

select *from curso;

select * from aluno;
drop table aluno;

create table aluno(
	id serial primary key,
	nome varchar(255) not null
);

insert into aluno(nome) values ('Diego');
insert into aluno(nome) values ('Rose');

select * from aluno

create table aluno_curso (
	aluno_id integer,
	curso_id integer,
	primary key (aluno_id, curso_id)
	FOREIGN KEY (aluno_id)
         REFERENCES aluno (id),

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)

);

insert into aluno_curso(aluno_id, curso_id) values(1,1);
insert into aluno_curso(aluno_id, curso_id) values(2,1);

select * from aluno where id = 1;
select * from curso where id = 1;
drop table aluno_curso;

create table aluno_curso (
	aluno_id integer,
	curso_id integer,
	primary key (aluno_id, curso_id),
	
	foreign KEY (aluno_id)
     REFERENCES aluno (id),

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)
);

insert into aluno_curso(aluno_id, curso_id) values(1,1);
insert into aluno_curso(aluno_id, curso_id) values(2,1);

select * from aluno;
select * from curso;

select * from aluno
join aluno_curso ON aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id

insert into aluno_curso(aluno_id, curso_id) values(2,2);


select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
join aluno_curso ON aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id

insert into aluno (nome) values ('Kiki');
insert into curso (id,nome) values (3,'CSS');

select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
left join aluno_curso ON aluno_curso.aluno_id = aluno.id
left join curso on curso.id = aluno_curso.curso_id

select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
right join aluno_curso ON aluno_curso.aluno_id = aluno.id
right join curso on curso.id = aluno_curso.curso_id

select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
full join aluno_curso ON aluno_curso.aluno_id = aluno.id
full join curso on curso.id = aluno_curso.curso_id

select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
cross join curso


select * from aluno;
select * from aluno_curso;
select * from curso;


drop table aluno_curso;
create table aluno_curso (
	aluno_id integer,
	curso_id integer,
	primary key (aluno_id, curso_id),
	
	foreign KEY (aluno_id)
     REFERENCES aluno (id)
	on delete cascade
	,

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)
);

insert into aluno_curso(aluno_id, curso_id) values(1,1);
insert into aluno_curso(aluno_id, curso_id) values(2,1);
insert into aluno_curso(aluno_id, curso_id) values(2,2);

select * from aluno_curso;

select aluno.nome as "Nome do Aluno",
	curso.nome as "Nome do Curso"
from aluno
join aluno_curso ON aluno_curso.aluno_id = aluno.id
join curso on curso.id = aluno_curso.curso_id

select * from aluno;


update aluno
	set id = 10
	where id = 3;
	
update aluno
	set id = 11
	where id = 2;

drop table aluno_curso;
create table aluno_curso (
	aluno_id integer,
	curso_id integer,
	primary key (aluno_id, curso_id),
	
	foreign KEY (aluno_id)
     REFERENCES aluno (id)
	on delete cascade
	on update cascade
	,

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)
);

insert into aluno_curso(aluno_id, curso_id) values(1,1);

insert into aluno_curso(aluno_id, curso_id) values(2,2);

select aluno.id as aluno_id,
	   aluno.nome as "Nome do Aluno",
	   curso.id as curso_id,
	   curso.nome as "Nome do Curso"
from   aluno
join   aluno_curso ON aluno_curso.aluno_id = aluno.id
join   curso on curso.id = aluno_curso.curso_id


SELECT curso.nome,
	count(aluno.id)
	from curso
    LEFT JOIN aluno_curso ON aluno_curso.curso_id = curso.id
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
	--where curso.nome = 'CSS'
	group by 1
	having count (aluno.id) = 0
	
	
select nome,
	count(id)
	from funcionarios
	group by nome
	having count (id) = 1;
	