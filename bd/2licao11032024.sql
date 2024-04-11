-- Nomes: Andrey e Gabriel Araújo

CREATE DATABASE licao11032024;

USE licao11032024;

create table CIDADE (
    cod_cidade numeric(4) not null,
    nom_cidade varchar(30) not null,
    primary key (cod_Cidade)
); 

create table SOCIO (
    cpf_Socio char(11) NOT NULL,
    nome_Socio varchar(20) NOT NULL,
    data_Nasc_Socio DATE NOT NULL,
    rg_Socio numeric(15) NOT NULL,
    cidade_Cod_Cidade numeric(4) NOT NULL,
    PRIMARY KEY (cpf_Socio),
    FOREIGN KEY (cidade_cod_cidade) REFERENCES cidade(cod_cidade)
);

alter table CIDADE
add uf_cidade char(2) not null; 

ALTER TABLE SOCIO
ADD tel_socio VARCHAR(10)
ADD sex_socio CHAR(1) NOT NULL;

ALTER TABLE SOCIO
MODIFY (nome_Socio VARCHAR(35));

create table SETOR (
    cod_set numeric(3) not null,
    nom_set varchar(30) not null,
    primary key (cod_set)
);

ALTER TABLE SOCIO 
ADD COD_SETOR NUMERIC NOT NULL REFERENCES SETOR(cod_set);

CREATE TABLE DEPEDENTE (
    NUM_SOCIO CHAR NOT NULL,
    NUM_DEPENDENTE NUMERIC(4) NOT NULL,
    NAME_DEPENDENTE VARCHAR(30) NOT NULL,
    DATA_NASC_DEPENDENTE DATE NOT NULL,  
    PRIMARY KEY (NUM_DEPENDENTE),
    FOREIGN KEY (NUM_SOCIO) REFERENCES SOCIO(cpf_Socio)
);