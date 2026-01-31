-- =============================================================================
-- Arquivo: schema.sql | File: schema.sql
-- Este script contém os comandos para criar as tabelas de um mini-projeto em SQLite.
-- This script contains commands to create tables for a mini-project in SQLite.
-- =============================================================================

-- NOTA IMPORTANTE: No SQLite, o comando CREATE DATABASE não existe.
-- Criamos o banco de dados simplesmente salvando um novo arquivo .db no DB Browser for SQLite.
-- IMPORTANT NOTE: In SQLite, the CREATE DATABASE command does not exist.
-- We create the database by simply saving a new .db file in DB Browser for SQLite.

-- Remover tabelas existentes | Remove existing tables
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

-- Tabela: tipos_produtos. Armazena os tipos de produtos.
-- Table: tipos_produtos. Stores product types.
CREATE TABLE tipos_produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

-- Tabela: produtos. Armazena os detalhes dos produtos.
-- Table: produtos. Stores product details.
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco REAL NOT NULL,
    id_tipo_produto INTEGER REFERENCES tipos_produtos(id) NOT NULL
);

-- Tabela: pacientes. Armazena informações de pacientes.
-- Table: pacientes. Stores patient information.
CREATE TABLE pacientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    bairro TEXT NOT NULL,
    cidade TEXT NOT NULL,
    estado TEXT NOT NULL,
    cep TEXT NOT NULL,
    data_nascimento TEXT NOT NULL
);

-- Tabela: professor. Armazena informações de professores.
-- Table: professor. Stores teacher information.
CREATE TABLE professor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    telefone INTEGER NOT NULL,
    nome TEXT NOT NULL
);

-- Tabela: turma. Armazena informações de turmas.
-- Table: turma. Stores class information.
CREATE TABLE turma(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    capacidade INTEGER NOT NULL,
    id_professor INTEGER REFERENCES professor(id) NOT NULL
);

-- Tabela: escritorios. Armazena informações de escritórios.
-- Table: escritorios. Stores office information.
CREATE TABLE escritorios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pais TEXT NOT NULL
);

-- Tabela: funcionarios. Armazena informações de funcionários.
-- Table: funcionarios. Stores employee information.
CREATE TABLE funcionarios(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    id_escritorio INTEGER REFERENCES escritorios(id) NOT NULL
);

-- Tabela: pagamentos. Armazena informações de pagamentos.
-- Table: pagamentos. Stores payment information.
CREATE TABLE pagamentos(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_funcionario INTEGER REFERENCES funcionarios(id) NOT NULL,
    salario REAL NOT NULL,
    data TEXT NOT NULL
);

-- Tabela: categorias. Armazena categorias de produtos.
-- Table: categorias. Stores product categories.
CREATE TABLE categorias(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: produtos_agregacao.
-- Table: produtos_agregacao.
CREATE TABLE produtos_agregacao(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco_venda REAL NOT NULL,
    preco_custo REAL NOT NULL,
    id_categoria INTEGER REFERENCES categorias(id) NOT NULL
);

-- Tabela: tipos_agrupamento.
-- Table: tipos_agrupamento.
CREATE TABLE tipos_agrupamento(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: fabricantes. Armazena fabricantes de produtos.
-- Table: fabricantes. Stores product manufacturers.
CREATE TABLE fabricantes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela: produtos_agrupamento.
-- Table: produtos_agrupamento.
CREATE TABLE produtos_agrupamento(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    id_fabricante INTEGER REFERENCES fabricantes(id) NOT NULL,
    quantidade INTEGER NOT NULL,
    id_tipo INTEGER REFERENCES tipos_agrupamento(id) NOT NULL
);

-- Tabela: profissoes. Armazena cargos/profissões.
-- Table: profissoes. Stores jobs/professions.
CREATE TABLE profissoes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cargo TEXT NOT NULL
);

-- Tabela: clientes_juncao.
-- Table: clientes_juncao.
CREATE TABLE clientes_juncao(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT NOT NULL,
    telefone TEXT NOT NULL,
    id_profissao INTEGER REFERENCES profissoes(id) NOT NULL
);

-- Tabela: consumidor. Armazena dados de consumidores.
-- Table: consumidor. Stores consumer data.
CREATE TABLE consumidor(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    contato TEXT NOT NULL,
    endereco TEXT NOT NULL,
    cidade TEXT NOT NULL,
    cep TEXT NOT NULL,
    pais TEXT NOT NULL
);
