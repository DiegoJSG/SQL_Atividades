create schema academico;

create table academico.aluno(
	id serial primary key,
	primeiro_nome varchar(255) not null,
	ultimo_nome varchar (255) not null,
	data_nascimento date not null
);

create table academico.categoria(
	id serial primary key,
	nome varchar(255) not null unique
);

create table academico.curso (
	id serial primary key ,
	nome varchar(255) not null,
	categoria_id integer not null references academico.categoria(id)
);

create table academico.aluno_curso(
	aluno_id integer not null references academico.aluno(id),
	curso_id integer not null references academico.curso(id),
	primary key (aluno_id,curso_id)
);

INSERT INTO academico.aluno (primeiro_nome, ultimo_nome, data_nascimento) VALUES (
	'Vinicius', 'Dias', '1997-10-15'
), (
	'Patricia', 'Freitas', '1986-10-25'
), (
	'Diogo', 'Oliveira', '1984-08-27'
), (
	'Maria', 'Rosa', '1985-01-01'
);


INSERT INTO academico.categoria (nome) VALUES ('Front-end'), ('Programação'), ('Bancos de dados'), ('Data Science');

INSERT INTO academico.curso (nome, categoria_id) VALUES
	('HTML', 1),
	('CSS', 1),
	('JS', 1),
	('PHP', 2),
	('Java', 2),
	('C++', 2),
	('PostgreSQL', 3),
	('MySQL', 3),
	('Oracle', 3),
	('SQL Server', 3),
	('SQLite', 3),
	('Pandas', 4),
	('Machine Learning', 4),
	('Power BI', 4);
	
INSERT INTO academico.aluno_curso VALUES (1, 4), (1, 11), (2, 1), (2, 2), (3, 4), (3, 3), (4, 4), (4, 6), (4, 5);

select * from academico.curso
	join academico.categoria on academico.categoria.id = academico.curso.categoria_id
	where categoria_id = 2;
	
