-- Banco
CREATE DATABASE continhas;

-- Script SQL para criação das tabelas do banco de dados Continhas

-- Tabela Usuário
CREATE TABLE usuario (
    id INT NOT NULL PRIMARY KEY ,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

-- Tabela Categoria
CREATE TABLE categoria (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao text
);

-- Tabela Transação
CREATE TABLE transacao (
    id INT NOT NULL PRIMARY KEY,
    usuario_id INT NOT NULL,
    tipo_transacao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_hora DATE NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    nota_adicional text,
    categoria_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Tabela Meta
CREATE TABLE meta (
    id INT NOT NULL PRIMARY KEY,
    valor_meta DECIMAL(10,2) NOT NULL,
    data_vigencia DATE,
    categoria_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);