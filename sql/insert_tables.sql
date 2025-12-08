--\i C:/Users/Cleitin/BDDM/Consumo_propagandas/sql/insert_tables.sql

-- Ordem: EMPRESA, CANAL, LOCALIDADE, IDIOMA, CLIENTE_SEGMENTO, CAMPANHA_OBJETIVO, PUBLICO, ACAO_PUBLICITARIA 

INSERT INTO EMPRESA (nome)
SELECT DISTINCT Empresa
FROM Publicidade
ORDER BY Empresa
ON CONFLICT (nome) DO NOTHING; -- 50 registros

INSERT INTO CANAL (nome)
SELECT DISTINCT Canal
FROM Publicidade
ORDER BY Canal
ON CONFLICT (nome) DO NOTHING; -- 4 registros

INSERT INTO LOCALIDADE (cidade)
SELECT DISTINCT Cidade
FROM Publicidade
ORDER BY Cidade
ON CONFLICT (cidade) DO NOTHING; -- 5 REGISTROS

INSERT INTO IDIOMA (nome)
SELECT DISTINCT Idioma
FROM Publicidade
ORDER BY Idioma
ON CONFLICT (nome) DO NOTHING; -- 3 REGISTROS

INSERT INTO CLIENTE_SEGMENTO (nome)
SELECT DISTINCT Segmento_Cliente
FROM Publicidade
ORDER BY Segmento_Cliente
ON CONFLICT (nome) DO NOTHING; -- 5 REGISTROS

INSERT INTO CAMPANHA_OBJETIVO (nome)
SELECT DISTINCT Campanha_Meta
FROM Publicidade
ORDER BY Campanha_Meta
ON CONFLICT (nome) DO NOTHING; -- 4 REGISTROS

INSERT INTO PUBLICO (tipo, idade_min, idade_max)
SELECT DISTINCT Publico_Alvo, Idade_Minima, Idade_Maxima
FROM Publicidade
ORDER BY Idade_Minima
ON CONFLICT (tipo, idade_min, idade_max) DO NOTHING; -- 9 REGISTROS

INSERT INTO ACAO_PUBLICITARIA (
    campanha_numero,
    campanha_meta_id,
    duracao_dias,
    canal_id,
    taxa_conversao,
    custo_aquisicao,
    roi,
    localidade_id,
    idioma_id,
    cliques,
    impressoes,
    engajamento_score,
    segmento_id,
    campanha_data,
    empresa_id,
    publico_id
)
SELECT
    p.Campanha_numero,
    co.objetivo_id,
    p.Duracao_Dias,
    c.canal_id,
    p.Taxa_Conversao,
    p.Custo_Aquisicao,
    p.Retorno_Sobre_Investimento,
    l.localidade_id,
    i.idioma_id,
    p.Cliques,
    p.Impressoes,
    p.Engajamento_Score,
    cs.segmento_id,
    p.Campanha_Data,
    e.empresa_id,
    pu.publico_id
FROM Publicidade p
JOIN EMPRESA e ON e.nome = p.Empresa
JOIN CANAL c ON c.nome = p.Canal
JOIN LOCALIDADE l ON l.cidade = p.Cidade
JOIN IDIOMA i ON i.nome = p.Idioma
JOIN CLIENTE_SEGMENTO cs ON cs.nome = p.Segmento_Cliente
JOIN CAMPANHA_OBJETIVO co ON co.nome = p.Campanha_Meta
JOIN PUBLICO pu ON pu.tipo = p.Publico_Alvo
               AND pu.idade_min = p.Idade_Minima
               AND pu.idade_max = p.Idade_Maxima; -- 300.000 REGISTROS
