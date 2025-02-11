CREATE TABLE pais (
    id_pais   NUMBER PRIMARY KEY,    -- Incluído o PRIMARY KEY diretamente aqui
    nome_pais VARCHAR2(30)
);

CREATE TABLE estado (
    id_estado   NUMBER PRIMARY KEY,  -- Incluído o PRIMARY KEY diretamente aqui
    nome_estado VARCHAR2(30),
    id_pais     NUMBER,
    CONSTRAINT fk_estado FOREIGN KEY (id_pais)
        REFERENCES pais (id_pais)
);

CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,  -- Incluído o PRIMARY KEY diretamente aqui
    nome_cidade VARCHAR2(40),
    id_estado   NUMBER,
    CONSTRAINT fk_cidade FOREIGN KEY (id_estado)
        REFERENCES estado (id_estado)
);

CREATE TABLE bairro (
    id_bairro   NUMBER PRIMARY KEY,  -- Incluído o PRIMARY KEY diretamente aqui
    nome_bairro VARCHAR2(40),
    id_cidade   NUMBER,
    CONSTRAINT fk_bairro FOREIGN KEY (id_cidade)
        REFERENCES cidade (id_cidade)
);

CREATE TABLE endereco_cliente (
    id_endereco NUMBER PRIMARY KEY,  -- Incluído o PRIMARY KEY diretamente aqui
    cep         NUMBER,
    logradouro  VARCHAR2(100),
    numero      NUMBER,
    referencia  VARCHAR2(30),
    id_bairro   NUMBER,
    CONSTRAINT fk_bairro_endereco FOREIGN KEY (id_bairro)
        REFERENCES bairro (id_bairro)
);

-- EXERCÍCIOS - Inserção de dados na tabela 'pais'
INSERT INTO pais (id_pais, nome_pais) VALUES (1,'Brasil');
INSERT INTO pais (id_pais, nome_pais) VALUES (2,'Estados Unidos');
INSERT INTO pais (id_pais, nome_pais) VALUES (3,'Japao');
INSERT INTO pais (id_pais, nome_pais) VALUES (4,'Canada');
INSERT INTO pais (id_pais, nome_pais) VALUES (5,'Congo');

INSERT INTO estado (id_estado, nome_estado, id_pais, fk_estado) VALUES (1, 'Sao Paulo', 1, 1);
