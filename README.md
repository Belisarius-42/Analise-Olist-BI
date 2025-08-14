# 📊 Dashboard de Análise de E-commerce | Olist

![Status](https://img.shields.io/badge/status-finalizado-brightgreen)
![Tecnologias](https://img.shields.io/badge/SQL-Power%20BI-blueviolet)
![Dados](https://img.shields.io/badge/fonte-Olist%20Public%20Dataset-orange)

**Análise completa do ecossistema de e-commerce da Olist, explorando indicadores de vendas, desempenho logístico, análise geográfica e tendências temporais.**

### 🚀 [Acesse o Dashboard Interativo Online Aqui](https://app.powerbi.com/view?r=eyJrIjoiNjkyOTcyN2EtYTM1OC00MjMxLTg5YWYtZTUyYjI0YTU4OGMxIiwidCI6ImMzN2IzN2EzLWU5ZTItNDJmOS1iYzY3LTRiOWI3MzhlMWRmMCJ9)

---

<img width="2175" height="1211" alt="image" src="https://github.com/user-attachments/assets/b3b9aa0a-2fbe-4d98-b56b-95646da2e21a" />


## 🎯 Objetivo do Projeto

Este projeto de Business Intelligence foi desenvolvido para transformar os dados brutos da Olist em um dashboard interativo e estratégico. O objetivo é fornecer aos gestores uma ferramenta poderosa para:

* **Monitorar KPIs:** Acompanhar métricas vitais como Receita, Pedidos, Frete e Ticket Médio.
* **Análise Geográfica:** Identificar os principais mercados, visualizando a distribuição de clientes e vendedores por todo o Brasil.
* **Inteligência de Vendas:** Entender a performance por categoria de produto e identificar oportunidades de crescimento.
* **Análise Sazonal:** Descobrir padrões e tendências de vendas ao longo do tempo para otimizar estratégias de marketing e estoque.

## ✨ Páginas e Análises do Dashboard

O relatório é dividido em três páginas principais para uma navegação intuitiva:

* **Visão Geral:** Um resumo executivo com os principais indicadores e filtros dinâmicos por ano e categoria de produto.
* **Análise Geográfica:** Iilustra a densidade de clientes por estado, permitindo uma análise regional detalhada.
* **Análise Temporal:** Gráfico que mostra a evolução mensal da receita e do volume de pedidos, revelando picos e vales sazonais.

## 🛠️ Tecnologias e Metodologia

Este projeto demonstra um pipeline de dados completo, desde a estruturação do banco de dados até a visualização final.

* **SQL (PostgreSQL):** Utilizado para a criação de todo o schema do banco de dados relacional. O script `olist_db.sql` contém os comandos para criar as tabelas, definir chaves primárias e estrangeiras, e realizar a ingestão dos dados a partir dos arquivos CSV originais.

* **Power BI:** A principal ferramenta para a construção do dashboard, onde foram aplicadas as seguintes técnicas:
    * **Power Query (Editor M):** Para conectar ao banco de dados SQL, realizar a extração (Extract) e as etapas finais de transformação (Transform) dos dados.
    * **Modelagem de Dados:** Criação de um modelo relacional (esquema estrela) dentro do Power BI, conectando a tabela fato de pedidos às dimensões de clientes, produtos e vendedores.
    * **DAX (Data Analysis Expressions):** Desenvolvimento de métricas e KPIs essenciais, como `Receita Total`, `Ticket Médio` e `Total de Pedidos`, que formam a base das análises.
    * **Visualização de Dados:** Construção de um relatório interativo e visualmente agradável, aplicando princípios de design para garantir uma experiência de usuário clara e objetiva.

* **Git & GitHub:** Para controle de versão dos scripts SQL, documentação e organização geral do projeto.

## ✍️ Autor
Bruno Henrique do Prado
