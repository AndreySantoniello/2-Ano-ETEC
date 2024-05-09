CREATE TABLE EMPREGADO (
	COD_EMPREGADO INTEGER NOT NULL,
	primeiro_nome_emp VARCHAR(255) NOT NULL,
	ultimo_nome_emp VARCHAR(255) NOT NULL,
	data_niver_emp DATE NOT NULL,
	end_emp VARCHAR(255) NOT NULL,
	sexo_emp VARCHAR(1) NOT NULL,
	salario_emp DOUBLE NOT NULL,
	nro_departamento INTEGER NOT NULL,
	PRIMARY KEY (COD_EMPREGADO)
);

CREATE TABLE departamento (
	nro_departamento INTEGER NOT NULL,
	nome_depto VARCHAR(255) NOT NULL,
	local_depto VARCHAR(255) NOT NULL,
	PRIMARY KEY (nro_departamento)
);

CREATE TABLE PROJETO (
	nro_projeto INTEGER NOT NULL,
	nome_projeto VARCHAR(255) NOT NULL,
	local_projeto VARCHAR(255) NOT NULL,
	nro_departamento INTEGER NOT NULL,
	PRIMARY KEY (nro_projeto),
	FOREIGN KEY (nro_departamento) REFERENCES departamento(nro_departamento)
);

CREATE TABLE trabalha (
	cod_empregado INTEGER NOT NULL,
	nro_projeto INTEGER NOT NULL,
	horas_trabalhadas TIME,
	FOREIGN KEY (cod_empregado) REFERENCES EMPREGADO(COD_EMPREGADO),
	FOREIGN KEY (nro_projeto) REFERENCES PROJETO(nro_pro)
);

CREATE TABLE dependente (
	cod_empregado INTEGER NOT NULL,
	nome_dependente VARCHAR(255),
	sexo_depte VARCHAR(1),
	data_niver_depte DATE,
	parentesco VARCHAR(255),
	FOREIGN KEY (cod_empregado) REFERENCES EMPREGADO(COD_EMPREGADO)
);

CREATE TABLE UNIDADE(
	unidade INTEGER NOT NULL, 
	nome_Unidade VARCHAR(255),  
	local_unidade VARCHAR(255),
	PRIMARY KEY (unidade)
);

CREATE TABLE CURSO(
	cod_Curso INTEGER NOT NULL, 
	nome_Curso VARCHAR(255), 
	horas  DATETIME, 
	unidade VARCHAR(255),
	FOREIGN KEY (unidade) REFERENCES UNIDADE(cod_Unidade),
	PRIMARY KEY (cod_Curso)
);

CREATE TABLE PROFESSOR(
	matricula INTEGER NOT NULL,
	nome VARCHAR(255),
	unidade INTEGER NOT NULL,
	email VARCHAR(255),
	homepage VARCHAR(255),
	FOREIGN KEY (unidade) REFERENCES UNIDADE(unidade)
	PRIMARY KEY (matricula)
);

CREATE TABLE TURMA(
	turma VARCHAR(255),
	cod_Curso INTEGER NOT NULL,
	mat_Professor INTEGER NOT NULL,
	sala INTEGER NOT NULL,
	dia DATE,
	capacidade FLOAT NOT NULL,
	FOREIGN KEY (cod_Curso) REFERENCES CURSO(cod_Curso),
	FOREIGN KEY (mat_Professor) REFERENCES PROFESSOR(matricula),
	PRIMARY KEY (turma)
);

CREATE TABLE ALUNO(
	num_Aluno VARCHAR(255),
	nome VARCHAR(255),
	endereco VARCHAR(255),
	telefone VARCHAR(255),
	email VARCHAR(255),
	unidade INTEGER NOT NULL,
	FOREIGN KEY (unidade) REFERENCES UNIDADE(unidade)
	PRIMARY KEY (num_Aluno)
);

CREATE TABLE GRADE_ALUNO(
	num_Aluno VARCHAR(255),
	turma VARCHAR(255),
	nota FLOAT NOT NULL,
	codcurso INTEGER NOT NULL,
	FOREIGN KEY (num_Aluno) REFERENCES ALUNO(num_Aluno),
	FOREIGN KEY (turma) REFERENCES TURMA(turma),
	FOREIGN KEY (codcurso) REFERENCES CURSO(cod_Curso)
);