CREATE TABLE pais (
    id_pais   NUMBER,
    nome_pais VARCHAR2(30)
);

ALTER TABLE pais ADD PRIMARY KEY ( id_pais );

CREATE TABLE estado (
    id_estado   NUMBER,
    nome_estado VARCHAR2(30),
    id_pais     NUMBER
);

ALTER TABLE estado ADD PRIMARY KEY ( id_estado );

ALTER TABLE estado
    ADD CONSTRAINT fk_estado FOREIGN KEY ( id_pais )
        REFERENCES pais ( id_pais );

CREATE TABLE cidade (
    id_cidade   NUMBER,
    nome_cidade VARCHAR2(40),
    id_estado   NUMBER
);

ALTER TABLE cidade ADD PRIMARY KEY ( id_cidade );

ALTER TABLE cidade
    ADD CONSTRAINT fk_cidade FOREIGN KEY ( id_estado )
        REFERENCES estado ( id_estado );

CREATE TABLE bairro (
    id_bairro   NUMBER,
    nome_bairro VARCHAR2(40),
    id_cidade   NUMBER
);

ALTER TABLE cidade ADD PRIMARY KEY ( id_bairro );

ALTER TABLE bairro
    ADD CONSTRAINT fk_bairro FOREIGN KEY ( id_bairro )
        REFERENCES cidade ( id_cidade );

CREATE TABLE endereco_cliente (
    id_endereco NUMBER,
    cep         NUMBER,
    logradouro  VARCHAR2,
    numero      NUMBER,
    referencia  VARCHAR2(30),
    id_bairro   NUMBER
);

ALTER TABLE esndereco_cliente ADD PRIMARY KEY ( id_endereco );

ALTER TABLE endereco_cliente ADD constraint fk_bairro;

FOREIGN KEY REFERENCES ENDERECO_CLIENTE ( ID_BAIRRO );
 