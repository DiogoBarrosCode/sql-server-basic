/* Selecionando todos os registros da tabela */
select * from clientes;


/* Inserindo registros na tabela */
insert into clientes (codigo, nome, tipoPessoa) values (1, 'Diogo', 'F');
insert clientes (codigo, nome, tipoPessoa) values (2, 'Barros', 'J');
insert clientes values (3, 'Barbosa', 'J');
insert clientes values (4, 'Jaqueline', 'F'), (5, 'Correia', 'J');


/* Selecionando registros da tabela */
select nome, tipoPessoa from clientes;

select codigo, nome from clientes where tipoPessoa = 'J';

/* Retorna o registro que atenda as duas condições */
select * from clientes where codigo = 1 AND tipoPessoa = 'F';

/* Retorna os registro que atenda a alguma das duas condições*/
select * from clientes where codigo = 1 OR tipoPessoa = 'F';


/* Atualizando registros */
update clientes set tipoPessoa = 'F' where codigo = 5;


/* Deletando regstros */
delete from clientes where codigo = 5;

delete from clientes where codigo in(1,2,3);



/* Adicionando lógica em um select */

select *,
		case 
			when tipoPessoa = 'J' then 'Jurídica'
			when tipoPessoa = 'F' then 'Física'
			else 'Pessoa Indefinida'
		end
from	clientes;

/* concatenação 1 */
select *,
		case 
			when tipoPessoa = 'J' then 'Jurídica'
			when tipoPessoa = 'F' then 'Física'
			else 'Pessoa Indefinida'
		end + ' - ' + tipoPessoa
from	clientes;


/* concatenação 2 */
select *,
		case 
			when tipoPessoa = 'J' then 'Jurídica'
			when tipoPessoa = 'F' then 'Física'
			else 'Pessoa Indefinida'
		end + '(' + tipoPessoa + ')'
from	clientes;