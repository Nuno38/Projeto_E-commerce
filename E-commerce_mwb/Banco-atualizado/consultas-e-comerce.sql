use E_comerce;

select c.primeiro_nome, sum(pp.quantidade_produto_comprado) As total_produtos
from cliente c
join pedido p on c.id_cliente = p.id_cliente
join pedido_produto pp on p.id_pedido = pp.id_produto
group by c.primeiro_nome;

SELECT cj.razao_social, SUM(pp.quantidade_produto_comprado) AS total_produtos
FROM cliente_pj cj
JOIN pedido p ON cj.id_cliente_pj = p.id_cliente_pj
JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
GROUP BY cj.razao_social;

SELECT 
    f.razao_social AS nome_fornecedor,
    f.cnpj AS cnpj_fornecedor,
    v.razao_social AS nome_vendedor,
    v.cnpj AS cnpj_vendedor,
    p.nome_produto
FROM produto p
JOIN fornecedor f ON p.id_fornecedor = f.id_fornecedor
JOIN vendedor_externo v ON p.id_vendedor = v.id_vendedor
WHERE f.cnpj = v.cnpj;

SELECT f.razao_social, f.cnpj
FROM fornecedor f
JOIN vendedor_externo v ON f.cnpj = v.cnpj;

SELECT 
    p.id_produto,
    p.nome_produto,
    f.razao_social AS fornecedor,
    f.cnpj AS cnpj_fornecedor,
    SUM(e.quantidade) AS quantidade_estoque
FROM produto p
JOIN fornecedor f ON p.id_fornecedor = f.id_fornecedor
LEFT JOIN estoque e ON p.id_produto = e.id_produto
GROUP BY p.id_produto, p.nome_produto, f.razao_social, f.cnpj
ORDER BY p.nome_produto;

SELECT 
    p.nome_produto,
    f.razao_social AS fornecedor
FROM produto p
JOIN fornecedor f ON p.id_fornecedor = f.id_fornecedor
ORDER BY f.razao_social, p.nome_produto;

SELECT 
    SUM(pp.quantidade_produto_comprado) AS total_cancelados
FROM pedido p
JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
WHERE p.status_pedido = 'Cancelado';