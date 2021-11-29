select * from pedidos

select * from pedidoItem

alter table pedidoItem add constraint fk_pedido foreign key (codigoPedido) references pedidos (codigo)