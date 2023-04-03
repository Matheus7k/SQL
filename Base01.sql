create table Cliente(
    id int not null,
    nome varchar(150) not null,
    cpf char(11) not null,

    constraint Pk_Cliente primary key (id),
    constraint UN_Cliente_CPF unique (cpf),
);

create table Cliente_Fone(
    id_cliente int not null,
    numero varchar,
    tipo int not null,

    constraint PK_Cliente_Fone primary key (id_cliente, numero),
    constraint FK_Cliente_Fone_Cliente foreign key (id_cliente) references Cliente (id),
);