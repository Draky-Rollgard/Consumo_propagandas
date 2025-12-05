\c advertising
\d campanhas
\x
SELECT * FROM campanhas limit 5;
SELECT COUNT(*) AS total_registros FROM campanhas;

CREATE TABLE Publicidade (
    Campanha_ID INTEGER NOT NULL,
    Campanha_Meta VARCHAR(255) NOT NULL,
    Duracao_Dias SMALLINT NOT NULL,
    Canal VARCHAR(100) NOT NULL,
    Taxa_Conversao DOUBLE PRECISION NOT NULL,
    Custo_Aquisicao DOUBLE PRECISION NOT NULL,
    Retorno_Sobre_Investimento DOUBLE PRECISION NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Idioma VARCHAR(50) NOT NULL,
    Cliques BIGINT NOT NULL,
    Impressoes BIGINT NOT NULL,
    Engajamento_Score BIGINT NOT NULL,
    Segmento_Cliente VARCHAR(100) NOT NULL,
    Campanha_Data TIMESTAMP NOT NULL,
    Empresa VARCHAR(150) NOT NULL,
    Publico_Alvo VARCHAR(100) NOT NULL,
    Idade_Minima SMALLINT NOT NULL,
    Idade_Maxima SMALLINT NOT NULL
);

INSERT INTO Publicidade (
    Campanha_ID,
    Campanha_Meta,
    Duracao_Dias,
    Canal,
    Taxa_Conversao,
    Custo_Aquisicao,
    Retorno_Sobre_Investimento,
    Cidade,
    Idioma,
    Cliques,
    Impressoes,
    Engajamento_Score,
    Segmento_Cliente,
    Campanha_Data,
    Empresa,
    Publico_Alvo,
    Idade_Minima,
    Idade_Maxima
)
SELECT
    "Campaign_ID" AS Campanha_ID,
    "Campaign_Goal" AS Campanha_Meta,
    "Duration_in_Days" AS Duracao_Dias,
    "Channel_Used" AS Canal,
    "Conversion_Rate" AS Taxa_Conversao,
    "Acquisition_Cost" AS Custo_Aquisicao,
    "ROI" AS Retorno_Sobre_Investimento,
    "Location" AS Cidade,
    "Language" AS Idioma,
    "Clicks" AS Cliques,
    "Impressions" AS Impressoes,
    "Engagement_Score" AS Engajamento_Score,
    "Customer_Segment" AS Segmento_Cliente,
    TO_DATE("Date", 'YYYY-MM-DD') AS Campanha_Data,
    "Company" AS Empresa,
    "_Target_Audience" AS Publico_Alvo,
    "Age_Min" AS Idade_Minima,
    "Age_Max" AS Idade_Maxima
FROM campanhas;

--CREATE TABLE Publicidade (Campanha_ID INTEGER NOT NULL, Campanha_Meta VARCHAR(255) NOT NULL, Duracao_Dias SMALLINT NOT NULL, Canal VARCHAR(100) NOT NULL, Taxa_Conversao DOUBLE PRECISION NOT NULL, Custo_Aquisicao DOUBLE PRECISION NOT NULL, Retorno_Sobre_Investimento DOUBLE PRECISION NOT NULL, Cidade VARCHAR(100) NOT NULL, Idioma VARCHAR(50) NOT NULL, Cliques BIGINT NOT NULL, Impressoes BIGINT NOT NULL, Engajamento_Score BIGINT NOT NULL, Segmento_Cliente VARCHAR(100) NOT NULL, Campanha_Data TIMESTAMP NOT NULL, Empresa VARCHAR(150) NOT NULL, Publico_Alvo VARCHAR(100) NOT NULL, Idade_Minima SMALLINT NOT NULL, Idade_Maxima SMALLINT NOT NULL);
--INSERT INTO Publicidade (Campanha_ID, Campanha_Meta, Duracao_Dias, Canal, Taxa_Conversao, Custo_Aquisicao, Retorno_Sobre_Investimento, Cidade, Idioma, Cliques, Impressoes, Engajamento_Score, Segmento_Cliente, Campanha_Data, Empresa, Publico_Alvo, Idade_Minima, Idade_Maxima) SELECT "Campaign_ID" AS Campanha_ID, "Campaign_Goal" AS Campanha_Meta, "Duration_in_Days" AS Duracao_Dias, "Channel_Used" AS Canal, "Conversion_Rate" AS Taxa_Conversao, "Acquisition_Cost" AS Custo_Aquisicao, "ROI" AS Retorno_Sobre_Investimento, "Location" AS Cidade, "Language" AS Idioma, "Clicks" AS Cliques, "Impressions" AS Impressoes, "Engagement_Score" AS Engajamento_Score, "Customer_Segment" AS Segmento_Cliente, TO_DATE("Date", 'YYYY-MM-DD') AS Campanha_Data, "Company" AS Empresa, "_Target_Audience" AS Publico_Alvo, "Age_Min" AS Idade_Minima, "Age_Max" AS Idade_Maxima FROM campanhas;

SELECT * FROM Publicidade limit 5;