use E_comerce;
show tables;
select * from  cliente;
select * from produto;
select * from fornecedor;
select * from vendedor_externo;
select * from produto;
select * from pedido;
select * from pedido_produto;
select * from estoque;
select * from cliente_pj;
select *from tipo_pagamento;
select * from movimentacoes_pedidos;
select * from pagamento_pedido;
select * from entrega_pedido;

insert into cliente values 
(1,'Rodigo','Sil','Borgues', 06956489351,'1988-08-21','Rua: Vidal josé 73'),
(2,'Pablo','Thi','Ramos', 0665234982,'1998-09-21','Rua: Agilio josé 73'),
(3,'Pedro','Per','Numes', 16549783215,'2000-11-11','Rua: batista josé 73'),
(4,'Diego','Rod','Pereiras', 96326479123,'1987-05-20','Rua: Silva josé 73'),
(5,'Fernando','joa','Neves', 78956862314,'1989-10-21','Rua: Marina josé 73'),
(6,'Elias','Jõa','do Nacimento junior', 06568943267,'1988-08-21','Rua: São josé 93'); 

insert into cliente_pj values 
(1,'Rodigo', 65975623689856,'Rua: Vidal josé 73','1988-08-21'),
(2,'Pablo', 68965985642315,'Rua: Agilio josé 73','1998-09-21'),
(3,'Pedro', 36532658956324,'Rua: batista josé 73','2000-11-11'),
(4,'Diego', 85623165478965,'Rua: Silva josé 73','1987-05-20'),
(5,'Fernando', 12365469856452,'Rua: Marina josé 73','1989-10-21'),
(6,'Elias', 32165498756423,'Rua: São josé 93','1988-08-21'); 

insert into fornecedor values
(1,'Eltron Barbada',12654398751654,'Barbada eletron', 'Rua das torres'),
(2,'Moda Xique',15264987652315,'Botique da danda', 'Rua da liberdade'),
(3,'Fit macron',12365468523567,'Mundo Fitness', 'Rua das torres'),
(4,'So Rodas',65987564325689,'Rodados e Rodas', 'Rua das torres'),
(5,'No pé ',78965462365984,'Pezão calçados', 'Rua das torres'),
(6,'Mundo tech',56965874321657,'Tech eletron', 'Rua das torres');

insert into vendedor_externo values
(1,'Ricardo e CIA',25649836542356,'Rua aririu'),
(2,'Nunes',85641236547896,'Rua marchimelo'),
(3,'Silva e Silva',56423845621564,'Rua aririu'),
(4,'Ricardo brando',76556326489657,'Rua aririu'),
(5,'Belennute',56498646978523,'Rua bentivi'),
(6,'Pioetro ',65894632564897,'Rua aririu');

insert into produto
(id_fornecedor, id_vendedor, nome_produto, classificacao_kids, avaliacao, size, categoria, descricao, status_produto) values
(6,5,'Tablet',1,10,'M','Eletrônicos','Tablet de última geração','Disponivel'),
(2,1,'Camiseta',0,10,'G','Roupas','Camiseta básica de algodão','Disponivel'),
(3,2,'Bola',1,9,'Único','Esportivo','Bola oficial de futebol','Disponivel'),
(1,3,'Celular',1,9,'Único','Eletrônicos','Smartphone de última geração','Disponivel'),
(5,4,'Sapato',1,7,'42','Vestuário','Sapato social masculino','Disponivel'),
(4,6,'Tênis',1,8,'39','Vestuário','Tênis esportivo confortável','Disponivel');

insert into pedido values
(1,3,null,4,'Tablet','Em Andamento',57.00),
(2,1,null,2,'Bola','Processando',35.00),
(3,null,1,3,'Celular','Cancelado',22.00),
(4,null,2,5,'Camiseta','Em Andamento',55.00),
(5,1,null,1,'Spatens','Enviado',15.00),
(6,3,null,5,'Tenis','Enviado',55.00);

insert into pedido_produto values 
(1,1,3),
(2,4,2),
(3,5,3),
(4,3,1),
(5,2,10),
(6,6,5);

insert into estoque values
(1,1,1,3,6,15,null),
(2,2,4,5,1,16,null),
(3,4,3,2,3,7,null),
(4,3,2,1,2,20,null),
(5,5,6,4,4,7,null),
(6,6,5,6,5,15,null);

insert into movimentacoes_pedidos value 
(1,2,1,'Entrada',2,null),
(2,3,6,'Saída',3,null), 
(3,4,5,'Entrada',1,null),
(4,5,4,'Saída',4,null),
(5,6,3,'Saída',5,null),
(6,1,2,'Entrada',1,null);

insert into tipo_pagamento values
(1,'Crédito'),
(2,'Débito'),
(3,'Pix'),
(4,'Boleto'),
(5,'Crédito'),
(6,'Pix');

insert pagamento_pedido values
(1,2,1,55.00),
(2,3,3,75.00),
(3,4,4,85.00),
(4,5,5,15.00),
(5,6,1,45.00),
(6,1,6,89.00);

insert into entrega_pedido values 
(1,3,null,5,'Entregue','ABCDEF33'),
(2,1,null,6,'Entregue','BFETRH55');

