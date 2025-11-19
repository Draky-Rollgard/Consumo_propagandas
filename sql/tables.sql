CREATE TABLE EMPRESA (
    empresa_id SERIAL PRIMARY KEY,
    nome VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE CANAL (
    canal_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE LOCALIDADE (
    localidade_id SERIAL PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    UNIQUE (cidade)
);

CREATE TABLE IDIOMA (
    idioma_id SERIAL PRIMARY KEY,
    nome VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE CLIENTE_SEGMENTO (
    segmento_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE CAMPANHA_OBJETIVO (
    objetivo_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

-- entidade independente caracterização de Pessoa

CREATE TABLE PUBLICO (
    publico_id SERIAL PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    idade_min SMALLINT NOT NULL,
    idade_max SMALLINT NOT NULL,
    UNIQUE(
        tipo, 
        idade_min, 
        idade_max)
);

-- Preservaçao de demais campos como ação publicitária
CREATE TABLE ACAO_PUBLICITARIA (
    acao_id SERIAL PRIMARY KEY,
    campanha_ID INTEGER NOT NULL,
    campanha_meta_id INT NOT NULL REFERENCES CAMPANHA_OBJETIVO(objetivo_id),
    Duracao_Dias SMALLINT NOT NULL,
    Canal_id INT NOT NULL REFERENCES CANAL(canal_id),
    Taxa_Conversao DOUBLE PRECISION NOT NULL,
    Custo_Aquisicao DOUBLE PRECISION NOT NULL,
    ROI DOUBLE PRECISION NOT NULL,
    socalidade_id INT NOT NULL REFERENCES LOCALIDADE(localidade_id),
    idioma_id INT NOT NULL REFERENCES IDIOMA(idioma_id),
    Cliques BIGINT NOT NULL,
    Impressoes BIGINT NOT NULL,
    Engajamento_score BIGINT NOT NULL,
    segmento_id INT NOT NULL REFERENCES CLIENTE_SEGMENTO(segmento_id),
    Campanha_Data DATE NOT NULL,
    empresa_id INT NOT NULL REFERENCES EMPRESA(empresa_id),
    publico_id INT NOT NULL REFERENCES PUBLICO(publico_id)
);


-- CONSULTAS DE ANÁLISE
select empresa, COUNT(distinct Segmento_Cliente) AS total_segmentos from publicidade group by empresa;
-- cada empresa tem apenas um segmento
select Segmento_Cliente, COUNT(distinct empresa) AS total_empresas from publicidade group by Segmento_Cliente;
-- um mesmo segmento tem mais de uma empresa (10 empresas para cada), Fashion, Food, Healh, Home, Tecnology

