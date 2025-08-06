-- Arquivo: schema.sql
-- Este script contém os comandos para criar as tabelas de um mini-projeto em SQLite.

-- NOTA IMPORTANTE: No SQLite, o comando CREATE DATABASE não existe.
-- Criamos o banco de dados simplesmente salvando um novo arquivo .db no DB Browser for SQLite.

-- Remover tabelas existentes (opcional, para garantir um ambiente limpo ao recriar)
-- CUIDADO: Isso apagará TODOS os dados existentes nestas tabelas.

DROP TABLE IF EXISTS turma;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS pacientes;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS tipos_produtos;
DROP TABLE IF EXISTS escritorios;
DROP TABLE IF EXISTS funcionarios;
DROP TABLE IF EXISTS pagamentos;
DROP TABLE IF EXISTS categorias;
DROP TABLE IF EXISTS fabricantes;
DROP TABLE IF EXISTS tipos_agrupamento;
DROP TABLE IF EXISTS profissoes;
DROP TABLE IF EXISTS clientes_juncao;
DROP TABLE IF EXISTS consumidor;
DROP TABLE IF EXISTS produtos_agregacao;
DROP TABLE IF EXISTS produtos_agrupamento;


-- Tabela: tipos_produtos. Armazena os tipos de produtos (ex: Computadores, Impressoras).
CREATE TABLE tipos_produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

-- Tabela: produtos. Armazena os detalhes dos produtos.
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco REAL NOT NULL,
    id_tipo_produto INTEGER REFERENCES tipos_produtos(id) NOT NULL
);

-- Tabela: pacientes. Armazena informações de pacientes.
CREATE TABLE pacientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    bairro TEXT NOT NULL,
    cidade TEXT NOT NULL,
    estado TEXT NOT NULL,
    cep TEXT NOT NULL,
    data_nascimento TEXT NOT NULL -- Data armazenada como TEXT
);

-- Tabela: professor. Armazena informações de professores.
CREATE TABLE professor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    telefone INTEGER NOT NULL, -- Telefone como INTEGER, pode ser TEXT também
    nome TEXT NOT NULL
);

-- Tabela: turma. Armazena informações de turmas, com referência ao professor.
CREATE TABLE turma(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    capacidade INTEGER NOT NULL,
    id_professor INTEGER REFERENCES professor(id) NOT NULL
);

-- Tabela: escritorios. Armazena informações de escritórios, por país.
CREATE TABLE escritorios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pais TEXT NOT NULL
);

-- Tabela: funcionarios. Armazena informações de funcionários, com referência ao escritório.
CREATE TABLE funcionarios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    id_escritorio INTEGER REFERENCES escritorios(id) NOT NULL
);

-- Tabela: pagamentos. Armazena informações de pagamentos de funcionários.
CREATE TABLE pagamentos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_funcionario INTEGER REFERENCES funcionarios(id) NOT NULL,
    salario REAL NOT NULL,
    data TEXT NOT NULL -- Data armazenada como TEXT
);

-- Tabela: categorias. Armazena categorias de produtos.
CREATE TABLE categorias(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: produtos (do módulo de agregação - nome diferente para evitar conflito com a primeira 'produtos')
-- Renomeada para 'produtos_agregacao' para este projeto, para evitar conflito de nome.
CREATE TABLE produtos_agregacao(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco_venda REAL NOT NULL,
    preco_custo REAL NOT NULL,
    id_categoria INTEGER REFERENCES categorias(id) NOT NULL
);

-- Tabela: tipos (do módulo de agrupamento - nome diferente para evitar conflito com 'tipos_produtos')
-- Renomeada para 'tipos_agrupamento' para este projeto.
CREATE TABLE tipos_agrupamento(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: fabricantes. Armazena fabricantes de produtos.
CREATE TABLE fabricantes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: produtos (do módulo de agrupamento - nome diferente para evitar conflito)
-- Renomeada para 'produtos_agrupamento' para este projeto.
CREATE TABLE produtos_agrupamento(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    id_fabricante INTEGER REFERENCES fabricantes(id) NOT NULL,
    quantidade INTEGER NOT NULL,
    id_tipo INTEGER REFERENCES tipos_agrupamento(id) NOT NULL
);

-- Tabela: profissoes. Armazena cargos/profissões.
CREATE TABLE profissoes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cargo TEXT NOT NULL
);

-- Tabela: clientes (do módulo de junção - nome diferente para evitar conflito com 'pacientes')
-- Renomeada para 'clientes_juncao' para este projeto.
CREATE TABLE clientes_juncao(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT NOT NULL, -- Data armazenada como TEXT
    telefone TEXT NOT NULL,
    id_profissao INTEGER REFERENCES profissoes(id) NOT NULL
);

-- Tabela: consumidor. Armazena dados de consumidores.
CREATE TABLE consumidor(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    contato TEXT NOT NULL,
    endereco TEXT NOT NULL,
    cidade TEXT NOT NULL,
    cep TEXT NOT NULL,
    pais TEXT NOT NULL
);