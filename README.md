# Consumo_propagandas
Projeto de Big Data &amp; Data Mining

Descrição do Projeto

Projeto acadêmico em Python para análise de dados de campanhas de propaganda. O objetivo é importar, tratar e analisar dados comportamentais de campanhas publicitárias utilizando PostgreSQL como banco de dados e Python como linguagem principal para manipulação, visualização e integração de dados.

Bases de dados(.csv)

Social Media Adversiting Dataset:
[Adversiting_Data](https://www.kaggle.com/code/subhrasmukherjee/marketing-mix-modelling-mmm-implementation/input)

Marketing Mix Modelling:
[Social_Media_Adversiting](https://www.kaggle.com/datasets/jsonk11/social-media-advertising-dataset)

Estrutura do projeto:
venv/: Ambiente virtual com todas as dependências do projeto.
Data/: Diretório destinado a arquivos CSV grandes (ignorado pelo Git).
.env: Variáveis de ambiente contendo credenciais do PostgreSQL.

Scripts Python principais:
Conexão com PostgreSQL via SQLAlchemy
Criação de DATABASE_URL a partir de variáveis de ambiente.
requirements.txt: Lista de dependências do projeto.

Dependências:
SQLAlchemy
psycopg2-binary
python-dotenv
pandas (para manipulação de CSVs e análise de dados)
(Outras bibliotecas que possam ser adicionadas conforme a necessidade)

Para rodar esse projeto:
clone o repositório:
git clone <URL_DO_REPOSITORIO>
cd Consumo_Propagandas

Crie e ative um ambiente virtual:
    python -m venv venv
Windows
    venv\Scripts\activate
Linux / Mac
    source venv/bin/activate

Instale as dependências:
pip install -r requirements.txt

Configure um .env com suas credenciais:
PGUSER=postgres
PGPASS=ton
PGHOST=localhost
PGPORT=5432
PGDB=advertising


Observações importantes

O projeto foi desenvolvido pensando em análise de dados de campanhas publicitárias, mas a estrutura de banco e scripts pode ser reutilizada.
Arquivos CSV grandes devem ser colocados em Data/, que está ignorado pelo Git.
Encoding do banco deve ser UTF-8 para evitar problemas de Unicode.