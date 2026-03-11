create database vendas;
use vendas;

create table tipo_pagto(
  cod_tipo_pagto int(11) not null primary key,
  nome_tipo_pagto varchar(20) not null,
  ativo bit(1) not null
  );

create table status(
  cod_status int(11) not null primary key,
  descricao varchar(40)
  );

create table endereco_cobranca(
  cod_end_cobranca int(11) not null primary key,
  rua_end_cobranca varchar(100) not null,
  nmro_casa int not null,
  complemento varchar(100)
);

create table endereco_entrega(
  cod_end_entrega int(11) not null primary key,
  rua_end_entrega varchar(100) not null,
  nmro_casa int not null,
  complemento varchar(100)
);

create table pedido(
  cod_pedido int(11) not null primary key,
  cod_cliente int(11) not null,
  cod_tipo_pagto int(11) not null,
  valor_total double(9,2),
  cod_end_cobranca int(11) not null,
  cod_end_entrega int(11) not null,
  cod_status int(11) not null,
  data_status timestamp
);

create table tracking();

create table entrega(
  cod_entrega int(11) not null primary key,
  cod_pedido 
