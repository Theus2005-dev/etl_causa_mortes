# Projeto ETL – Causas de Morte no Mundo

Este projeto tem como objetivo a construção de um pipeline ETL para tratamento e organização de dados
provenientes de um dataset do Kaggle, que contém informações sobre causas de morte em diferentes países,
segmentadas por ano, gênero, faixa etária e causa.

Os dados tratados são armazenados em um modelo dimensional, permitindo a criação de dashboards e
relatórios analíticos utilizando Power BI e aplicações web desenvolvidas com Next.js.

## Arquitetura

O projeto utiliza a arquitetura tradicional de Data Warehouse, organizada nas seguintes camadas:

- **Staging**: ingestão e padronização inicial dos dados brutos.
- **ODS (Operational Data Store)**: dados tratados, tipados e normalizados.
- **DW (Data Warehouse)**: modelo dimensional em esquema estrela, composto por tabelas fato e dimensões,
  otimizado para análises e visualizações.
- As tabelas foram inicialmente importadas via CSV, aproveitando o identity automático do Postgres. Posteriormente, os IDs foram padronizados para uso como chaves substitutas no modelo dimensional.
