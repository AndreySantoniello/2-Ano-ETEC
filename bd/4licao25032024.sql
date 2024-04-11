create table Cliente (
    cod_clie 		integer primary key,
    nome_clie 		varchar(30) not null,
    endereco 		varchar(45) not null,
    cidade 			varchar(10) not null,
    cep 			number(8) not null,
    cnpj 			number(14) not null,
    PRIMARY KEY (cod_clie)
);

create table Pedido (
    num_pedido		integer primary key,
    pr_entrega		integer not null,
    PRIMARY KEY (num_pedido)
);

create table Vendedor (
    cod_ven			integer primary key,
    salario_fixo	integer not null,
    commisao		char(1) not null,
    PRIMARY KEY (cod_ven)
);

create table Produto (
    cod_prod 		integer primary key,
    descricao		varchar(50) not null,
    val_unit		float not null,
    unidade			varchar(5) not null,
    PRIMARY KEY (cod_prod)
);

create table Item_Pedido(
    num_pedido_item		integer primary key,
    cod_prod_item		integer,
    PRIMARY KEY (num_pedido),
    FOREIGN KEY (cod_prod_item) REFERENCES Produto(cod_prod)
    FOREIGN KEY (num_pedido_item) REFERENCES Pedido(num_pedido)
);


