-- Arquivo: inserts.sql
-- Este script contém os comandos para inserir dados nas tabelas de um mini-projeto em SQLite.

-- NOTA IMPORTANTE: Certifique-se de que as tabelas já foram criadas, executando o script 'schema.sql' antes de rodar este script.

-- Inserindo dados na tabela 'tipos_produtos'
INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');
INSERT INTO tipos_produtos (descricao) VALUES ('Notebooks');
INSERT INTO tipos_produtos (descricao) VALUES ('Smartphones');

-- Inserindo dados na tabela 'produtos'
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Notebook DELL 1544', 2345.67, 1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Jato de Tinta', 456.00, 2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse sem fio', 45.00, 3);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Monitor LED 24"', 599.90, 3);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Teclado Mecanico', 350.00, 3); 

-- Inserindo dados na tabela 'pacientes'
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
    VALUES ('Angelina Jolie', 'Rua da paz, 44', 'Nova Lima', 'Santos', 'SP', '12121-321', '1978-04-24');
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
    VALUES ('Brad Pitt', 'Av. Central, 100', 'Centro', 'Rio de Janeiro', 'RJ', '20000-000', '1963-12-18');   
INSERT INTO pacientes (nome, endereco, bairro, cidade, estado, cep, data_nascimento)
    VALUES ('Jennifer Aniston', 'Rua das Flores, 200', 'Jardins', 'São Paulo', 'SP', '01000-000', '1969-02-11');   
	
-- Inserindo dados na tabela 'professor'
INSERT INTO professor (telefone, nome) VALUES (12345, 'Fernando Perez');
INSERT INTO professor (telefone, nome) VALUES (98765, 'Ana Paula Costa');   
INSERT INTO professor (telefone, nome) VALUES (11223, 'Carlos Eduardo');   

-- Inserindo dados na tabela 'turma'
INSERT INTO turma (capacidade, id_professor) VALUES (50, 1);
INSERT INTO turma (capacidade, id_professor) VALUES (30, 2);   
INSERT INTO turma (capacidade, id_professor) VALUES (40, 3);   

-- Inserindo dados na tabela 'escritorios'
INSERT INTO escritorios (pais) VALUES ('Brasil');
INSERT INTO escritorios (pais) VALUES ('Estados Unidos');
INSERT INTO escritorios (pais) VALUES ('Alemanha');
INSERT INTO escritorios (pais) VALUES ('França');
INSERT INTO escritorios (pais) VALUES ('Japão');   
INSERT INTO escritorios (pais) VALUES ('Canadá');  

-- Inserindo dados na tabela 'funcionarios'
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Pedro', 'Souza', 1);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Sandra', 'Rubin', 2);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Mikail', 'Schumer', 3);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Olivier', 'Gloçan', 4);
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Akira', 'Tanaka', 5);   
INSERT INTO funcionarios (nome, sobrenome, id_escritorio) VALUES ('Emily', 'White', 2);   

-- Inserindo dados na tabela 'pagamentos'
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (1, 5347.55, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (2, 9458.46, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (3, 4669.67, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (4, 2770.32, '2019-03-17');
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (5, 8000.00, '2019-03-17');  
INSERT INTO pagamentos (id_funcionario, salario, data) VALUES (6, 6500.00, '2019-03-17');  

-- Inserindo dados na tabela 'categorias'
INSERT INTO categorias (nome) VALUES ('Material Escolar');
INSERT INTO categorias (nome) VALUES ('Acessório Informática');
INSERT INTO categorias (nome) VALUES ('Material Escritório');
INSERT INTO categorias (nome) VALUES ('Game');
INSERT INTO categorias (nome) VALUES ('Livros');   
INSERT INTO categorias (nome) VALUES ('Eletrônicos');   

-- Inserindo dados na tabela 'produtos_agregacao'
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caderno', 5.45, 2.30, 1);
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Caneta', 1.20, 0.45, 1);
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Pendrive 32GB', 120.54, 32.55, 2);
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mouse', 17.00, 4.30, 2);
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Mochila', 65.00, 25.00, 1);
INSERT INTO produtos_agregacao (descricao, preco_venda, preco_custo, id_categoria) VALUES ('Fone de Ouvido', 89.90, 20.00, 2);

-- Inserindo dados na tabela 'tipos_agrupamento'
INSERT INTO tipos_agrupamento (nome) VALUES ('Console');
INSERT INTO tipos_agrupamento (nome) VALUES ('Notebook');
INSERT INTO tipos_agrupamento (nome) VALUES ('Celular');
INSERT INTO tipos_agrupamento (nome) VALUES ('Smartphone');
INSERT INTO tipos_agrupamento (nome) VALUES ('Sofá');
INSERT INTO tipos_agrupamento (nome) VALUES ('Armário');
INSERT INTO tipos_agrupamento (nome) VALUES ('Refrigerador');
INSERT INTO tipos_agrupamento (nome) VALUES ('Tablet');

-- Inserindo dados na tabela 'fabricantes'
INSERT INTO fabricantes (nome) VALUES ('Sony');
INSERT INTO fabricantes (nome) VALUES ('Dell');
INSERT INTO fabricantes (nome) VALUES ('Microsoft');
INSERT INTO fabricantes (nome) VALUES ('Samsung');
INSERT INTO fabricantes (nome) VALUES ('Apple');
INSERT INTO fabricantes (nome) VALUES ('Beline');
INSERT INTO fabricantes (nome) VALUES ('Magno');
INSERT INTO fabricantes (nome) VALUES ('CCE');
INSERT INTO fabricantes (nome) VALUES ('Nintendo');
INSERT INTO fabricantes (nome) VALUES ('Lenovo');

-- Inserindo dados na tabela 'produtos_agrupamento'
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 3', 1, 100, 1);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Core 2 Duo 4GB RAM 500GB HD', 2, 200, 2);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Xbox 360 120GB', 3, 350, 1);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('GT-I6220 Quad band', 4, 300, 3);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('iPhone 4 32GB', 5, 50, 4);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Playstation 2', 1, 100, 1);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Sofá Estofado', 6, 200, 5);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Armário de Serviço', 7, 50, 6);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Refrigerador 420L', 8, 200, 7);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Wii 120GB', 9, 250, 1);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('MacBook Air', 5, 150, 2);
INSERT INTO produtos_agrupamento (nome, id_fabricante, quantidade, id_tipo) VALUES ('Galaxy S21', 4, 400, 4);

-- Inserindo dados na tabela 'profissoes'
INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
INSERT INTO profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');
INSERT INTO profissoes (cargo) VALUES ('DBA');
INSERT INTO profissoes (cargo) VALUES ('Cientista de Dados');

-- Inserindo dados na tabela 'clientes_juncao'
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('João Pereira', '1981-06-15', '1234-5688', 1);
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('Ricardo da Silva', '1973-10-10', '2234-5669', 2);
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('Felipe Oliveira', '1987-08-01', '4234-5640', 3);
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('Mário Pirez', '1991-02-05', '5234-5621', 1);
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('Fernanda Souza', '1995-03-20', '3333-4444', 5);
INSERT INTO clientes_juncao (nome, data_nascimento, telefone, id_profissao) VALUES ('Gustavo Lima', '1988-11-11', '7777-8888', 6);

-- Inserindo dados na tabela 'consumidor'
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Alfredo Nunes', 'Maria Nunes', 'Rua da paz, 47', 'São Paulo', '12345-687', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Ana Trujillo', 'Guilherme Souza', 'Rua Dourada, 452', 'Goiânia', '23298-423', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Leandro Veloz', 'Pedro Siqueira', 'Rua Vazia, 72', 'São Paulo', '93673-823', 'Brasil');
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('Carla Mendes', 'José Mendes', 'Av. Principal, 10', 'Rio de Janeiro', '20000-000', 'Brasil'); 
INSERT INTO consumidor (nome, contato, endereco, cidade, cep, pais) VALUES ('David Silva', 'Laura Silva', 'Street 5, 123', 'New York', '10001', 'Estados Unidos'); 
