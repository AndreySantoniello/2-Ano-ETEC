create table Aluno (
    rm_alu number(6) primary key,
    nm_alu varchar(30) not null
);

alter table Aluno add serie_alu varchar(3);
alter table Aluno add cpf_alu varchar(11);
alter table Aluno add dt_nasc date;

create table Curso (
    cd_curso number(3) primary key,
    nm_curso varchar(20) not null,
    preco float(5) not null 
);

alter table Curso add num_aulas_curso number(3);
alter table Curso add durac_curso time;

create table Disciplina (
	id_disc number(3) primary key,
    nm_disc varchar(3) not null
);

alter table Disciplina add nm_prof varchar(30);
alter table Disciplina add num_aulas number(3);
alter table Disciplina add  durac_aula time;

--insert into  values (1, ‘Marcel’, sysdate, null);

insert into Aluno values (123123, 'Araujo', 2bi, 29/02/2008);
insert into Aluno values ();
insert into Aluno values ();
insert into Aluno values ();

--insert into  (id_fun, nm_fun) values (4, ‘José);

