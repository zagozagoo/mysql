use db_cinema;

/*Quais são os estúdios cadastrados no banco de dados?*/
select nome
from tb_estudio;

/*Quantos filmes foram lançados em cada ano?*/

select 
	ano_lancamento as Ano, 
    count(codigo_filme) as "Qntd"
from tb_filme 
group by ano_lancamento;

/*Quais são os atores estrangeiros no banco de dados e quantos são?*/

select 
	nacionalidade,
    count(codigo_ator) as "qtd"
from tb_ator 
where nacionalidade != "Brasil"
group by nacionalidade;

select 
	nome
from tb_ator 
where nacionalidade != "Brasil";

/*Qual é o filme mais recente lançado?*/

select 
	nome, 
	ano_lancamento
from tb_filme
order by ano_lancamento DESC
limit 1;

/*Quais são os estúdios que tiveram um faturamento superior a 1 milhão no ano anterior?*/

select * from tb_estudio ;

select 
	nome
from tb_estudio 
where faturamento_ano_anterior > 500000000;
#fiz com um valor maior pois todos os estudios faturaram mais que 1 milhão :)

/*Quantos atores têm menos de 30 anos?*/

select 
	nome, 
    idade
from tb_ator 
where idade < 40;

select 
	count(codigo_ator) as "menos que 40"
from tb_ator
where idade < 40;

/*Qual é a média de meses de produção dos filmes?*/

select
	sum(meses) / count(nome) as "Média mêses"
from tb_filme;

/*Quais o filmes em que um ator recebeu o maior cache?*/

select 
	F.nome as Filme,
	ATO.nome as Nome,
    ATU.cache_ator as Cache
from tb_atuam as ATU
	inner join tb_filme as F
		on ATU.codigo_filme = F.codigo_filme
	inner join tb_ator as ATO
		on ATU.codigo_ator = ATO.codigo_ator
	order by ATU.cache_ator DESC
limit 1;

/*Quais são os filmes que foram lançados nos últimos 5 anos?*/

select 
	nome, 
	ano_lancamento
from tb_filme
order by ano_lancamento DESC
limit 5;

/*Qual é o estúdio com a data de fundação mais recente?*/

select 
	nome,
    data_fundacao
from tb_estudio
order by data_fundacao DESC
limit 1;

/*Quais são os atores que já atuaram em mais de 5 filmes?*/
select
	ATO.nome,
	count(ATU.codigo_ator) as filmes
from tb_ator as ATO
inner join tb_atuam as ATU
	on ATO.codigo_ator = ATU.codigo_ator
group by ATU.codigo_ator
having count(ATU.codigo_ator) = 5;

/*Qual é o custo médio total dos filmes produzidos por cada estúdio?*/

select 
	sum(custo_total) / count(codigo_filme) as "Média custo total"
from tb_filme;

/*Quais são os atores brasileiros que têm mais de 40 anos?*/

select 
	nome,
    idade,
    nacionalidade
from tb_ator
where nacionalidade = "Estados Unidos" && idade > 60;

/*Quais são os filmes e seus custos totais, ordenados pelo custo total em ordem crescente?*/

select 
	nome,
    custo_total
from tb_filme
order by custo_total ASC;


/*Quantos atores tem a letra inicial do seu nome entre A K e W ?*/

select 
	nome
from tb_ator
where nome like "A%" || nome like "K%" || nome like "W%";

/*Quantos filmes têm custo total entre $100.00 e $500.00?*/

select 
	nome,
    custo_total
from tb_filme
where custo_total >= 63000000.00 && custo_total <= 100000000.00
order by custo_total ASC;

/*Quantos estúdios têm um faturamento no ano anterior superior a $1 milhão e uma data de fundação anterior a 2000?*/

select 
	nome,
    faturamento_ano_anterior,
    data_fundacao
from tb_estudio
where faturamento_ano_anterior >= 600000000.00 && data_fundacao <= '2000-01-01';
