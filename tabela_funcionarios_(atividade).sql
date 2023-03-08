CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');

select * from funcionarios;

select * from funcionarios
	order by nome;
	

select * from funcionarios
	order by nome desc;	
	
select * from funcionarios
	order by nome, matricula desc;
	
select * from funcionarios
	order by 3,4,2;
	
select * from funcionarios
	order by 4 desc, nome desc, 2 asc;
	
	
select * from funcionarios
	order by 4 desc, funcionarios.nome desc, 2 asc;
		

select * from funcionarios 
	limit 5	;	
	
select * from funcionarios 
	order by nome
	limit 5	;
	
select * from funcionarios 
	order by id
	limit 5	
	offset 1;
	
select count (id),
	sum(id),
	max(id),
	min(id),
	round (avg(id),1)
	from funcionarios;	
	
select distinct
	nome,sobrenome
	from funcionarios 	
	order by nome;

select 
	nome,sobrenome,
	count(*)
	from funcionarios
	group by nome,sobrenome
	order by nome;
		
select 
	nome,sobrenome,
	count(id)
	from funcionarios
	group by 1,2
	order by nome;
	
