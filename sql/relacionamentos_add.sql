--\i C:/Users/Cleitin/BDDM/Consumo_propagandas/sql/relacionamentos_add.sql
ALTER TABLE EMPRESA DROP CONSTRAINT IF EXISTS fk_empresa_segmento;
ALTER TABLE EMPRESA DROP COLUMN IF EXISTS segmento_id;

-- Empresaxsegmento--
ALTER TABLE EMPRESA
ADD COLUMN segmento_id INT;

ALTER TABLE EMPRESA
ADD CONSTRAINT fk_empresa_segmento
FOREIGN KEY (segmento_id) REFERENCES CLIENTE_SEGMENTO(segmento_id);

UPDATE EMPRESA e
SET segmento_id = a.segmento_id
FROM ACAO_PUBLICITARIA a
WHERE a.empresa_id = e.empresa_id;

-- cidade x idioma
CREATE TABLE cidade_idioma (
    localidade_id INT NOT NULL REFERENCES localidade(localidade_id),
    idioma_id INT NOT NULL REFERENCES idioma(idioma_id),
    PRIMARY KEY (localidade_id, idioma_id)
);
