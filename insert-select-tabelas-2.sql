/* Inserindo registros na tabela produtos */
select * from produtos;

insert produtos values (1, 'caneta', 'caneta azul', 1.5);
insert produtos values (2, 'caderno', 'caderno de estudos', 20.5);



/* Inserindo registros na tabela pedidos */
select * from pedidos;

insert pedidos values (1, GETDATE(), 0, 3, 1);
insert pedidos values (2, GETDATE(), 0, 41.0, 2);

/* Convertendo tipos em um select --
Transformando date para varchar */
select *, CONVERT(varchar, dataSolicitacao) from pedidos;

/* Transformando date para varchar com uma formatação em padrão
brasileiro (103)*/
select *, CONVERT(varchar, dataSolicitacao, 103) from pedidos;



/* Inserindo registros na tabela pedidoItem */
select * from pedidoItem;

insert pedidoItem values (1, 1, 1.5, 2);
insert pedidoItem values (2, 2, 20.5, 2);