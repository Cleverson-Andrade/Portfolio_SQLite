-- Exemplos de SELECT no SQLite para seu projeto

-- Exemplo 1: Selecionar todos os produtos
SELECT * FROM produtos;

-- Exemplo 2: Selecionar todos os funcionários
-- Essa consulta irá mostrar todos os dados de todos os funcionários.
SELECT * FROM funcionarios;


-- Mas e se você quiser ver apenas algumas colunas, e não todas?
-- Você pode especificar quais colunas deseja ver, separando-as por vírgula.
-- Isso ajuda a focar nas informações importantes e evita o excesso de dados.
SELECT "nome", "sobrenome"
FROM funcionarios;

-- Exemplo 3: Selecionar o nome e o preço de venda dos produtos de agregação
-- Isso é útil para criar um relatório de preços, por exemplo.
SELECT descricao, preco_venda FROM produtos_agregacao;

-- Exemplo 4: Selecionar o nome e o cargo dos clientes
-- Isso te permite ver rapidamente a profissão de cada cliente.
SELECT
    c.nome AS nome_cliente,
    p.cargo AS cargo_cliente
FROM
    clientes_juncao AS c
JOIN
    profissoes AS p ON c.id_profissao = p.id;


-- Agora, vamos adicionar uma condição para filtrar os dados.
-- A cláusula WHERE permite que você selecione apenas as linhas que
-- atendem a uma condição específica.

-- Exemplo 5: Selecionar apenas os produtos com o id_tipo_produto igual a 3
-- Essa consulta seria como dizer: "Me mostre todos os produtos que são 'Diversos'".
-- Isso é útil para encontrar produtos de uma categoria específica.
SELECT
    p.descricao AS nome_produto,
    p.preco AS preco_produto,
    tp.descricao AS tipo_produto
FROM
    produtos AS p
INNER JOIN
    tipos_produtos AS tp ON p.id_tipo_produto = tp.id
WHERE
    tp.descricao = 'Diversos';

-- Exemplo 6: Selecionar os pagamentos com salário acima de R$ 5000,00
-- Essa consulta é como pedir: "Quais funcionários ganham mais de 5000 reais?".
-- É uma forma de filtrar informações para análise.
SELECT
    f.nome AS nome_funcionario,
    p.salario AS salario_funcionario
FROM
    pagamentos AS p
JOIN
    funcionarios AS f ON p.id_funcionario = f.id
WHERE
    p.salario > 5000;


-- E se quisermos ordenar os resultados?
-- A cláusula ORDER BY permite ordenar os resultados em ordem ascendente (ASC)
-- ou descendente (DESC).

-- Exemplo 7: Selecionar todos os produtos e ordená-los pelo preço de venda, do mais barato para o mais caro
-- Isso é útil para criar uma lista de preços, por exemplo.
SELECT descricao, preco_venda FROM produtos_agregacao
ORDER BY preco_venda ASC;

-- Exemplo 8: Selecionar os funcionários e ordená-los pelo nome, de Z a A
-- Isso pode ser útil para organizar uma lista de nomes em ordem alfabética inversa.
SELECT nome, sobrenome FROM funcionarios
ORDER BY nome DESC;