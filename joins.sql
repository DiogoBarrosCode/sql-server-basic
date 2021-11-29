select *
from	clientes cli
inner	join pedidos ped
on		cli.codigo = ped.codigoCliente

select *
from	clientes cli
left	join pedidos ped
on		cli.codigo = ped.codigoCliente
and		totalPedido > 10

select *
from	pedidos ped
right	join clientes cli
on		cli.codigo = ped.codigoCliente
and		totalPedido > 10


select	cli.nome, ped.totalPedido,
		case
			when cli.tipoPessoa = 'F' then 'Fisica'
			else 'Juridica'
			end tipoPessoa
from	clientes cli
left	join pedidos ped
on		cli.codigo = ped.codigoCliente