create table produtos(
	codigo int,
	nome varchar(100),
	descricao varchar(200),
	preco float
);

select * from produtos;


create table clientes(
	codigo int,
	nome varchar(200),
	tipoPessoa char(1)
);

select * from clientes;


create table pedidos(
	codigo int not null,
	dataSolicitacao datetime not null,
	flagPago bit not null,
	totalPedido float not null,
	codigoCliente int

);

select * from pedidos;



create table pedidoItem(
	codigoPedido int not null,
	codigoProdutos int not null,
	preco float not null,
	quantidade int not null

);

select * from pedidoItem;
