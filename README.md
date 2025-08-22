# Projeto de Banco de Dados - E-commerce

<h1> Este projeto é um modelo conceitual de banco de dados para um E-Commerce</h1>
----------------------------------------------------------------------------------

# Objetivo 
Criar uma estrutura de banco de dados para um comércio eletrônico que permita realizar.
- Cadastro
- Processamento e gerenciamento de produtos
- Processamento de pedidos
- Controle de estoque
- Relacionamento com fornecedores e vendedores externos
- Acompanhamento de entrega e pagamentos
- --------------------------------------------------------------------------------

# Ferramentas Utilizadas
MySQL Workbench - Para criação do modelo conceitual - arquivo .mwb
<br>
**Markdwon**
<br>
                                                        ------------------ Penútimo projeto Redmi atualizado -------------------------------
<br>
Modelo ER - E-commerce

Entidades e Atributos
Cliente

id_cliente (PK): Identificador único do cliente.

nome: Nome do cliente.

cpf_cnpj: Documento de identificação (CPF para pessoa física, CNPJ para pessoa jurídica).

endereco: Endereço do cliente.

telefone: Telefone para contato.

email: E-mail do cliente.

Produto

id_produto (PK): Identificador único do produto.

nome: Nome do produto.

descricao: Descrição detalhada do produto.

preco_unitario: Preço unitário do produto.

Estoque

id_movimentacao (PK): Identificador único da movimentação.

id_produto (FK): Referência ao produto movimentado.

tipo_movimentacao: Indica se a movimentação é entrada ou saída.

quantidade: Quantidade movimentada.

data_movimentacao: Data e hora da movimentação (default: CURRENT_TIMESTAMP).

Pedido

id_pedido (PK): Identificador único do pedido.

id_cliente (FK): Cliente que realizou o pedido.

data_pedido: Data em que o pedido foi realizado.

status: Situação atual do pedido (ex: em processamento, enviado, entregue).

Pedido_Produto

id_pedido (FK): Referência ao pedido.

id_produto (FK): Referência ao produto.

quantidade: Quantidade solicitada do produto.

preco_unitario: Preço unitário no momento do pedido (mantém histórico de preços).

Pagamento_Pedido

id_pagamento (PK): Identificador único do pagamento.

id_pedido (FK): Referência ao pedido.

tipo_pagamento: Forma de pagamento (ex: cartão, PIX, boleto).

valor: Valor pago.

data_pagamento: Data do pagamento.

Entrega_Pedido

id_entrega (PK): Identificador único da entrega.

id_pedido (FK): Referência ao pedido.

endereco_entrega: Endereço de entrega.

status_entrega: Situação da entrega (ex: em trânsito, entregue).

data_envio: Data de envio.

data_entrega: Data de entrega.

Relacionamentos

Cliente – Pedido (1:N): Um cliente pode realizar vários pedidos.

Pedido – Pedido_Produto (1:N): Um pedido pode conter vários produtos.

Produto – Pedido_Produto (1:N): Um produto pode estar presente em vários pedidos.

Produto – Estoque (1:N): Um produto pode ter várias movimentações de estoque.

Pedido – Pagamento_Pedido (1:1): Cada pedido possui um pagamento associado.

Pedido – Entrega_Pedido (1:1): Cada pedido possui uma entrega associada.

