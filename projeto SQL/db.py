# %%
import pandas as pd
import sqlalchemy
import os

engine = sqlalchemy.create_engine("sqlite:///../data/olist.db")

query_files = {
    "top_10_produtos": "10mais.sql",
    "clientes_por_estado": "estados_vendas.sql",
    "avaliacoes": "avaliacoes.sql",
    "avaliacao_e_frete":"avaliacao_frete.sql",
    "Faturamento_mensal":"Fatu_mensal.sql",
    "Formas_de_Pagamento":"formas_pagamento.sql",
    "Tempo_medio_entrega":"media_entrega.sql",
    "analise_de_vendedores":"quantia_vendedores.sql"
}

df = {}

for nome_analise, arquivo_sql in query_files.items():
    try:
        with open(arquivo_sql) as file:
            query = file.read()
            df[nome_analise] = pd.read_sql_query(query, con=engine)

    except FileNotFoundError:
        print(f"ERRO: O arquivo '{arquivo_sql}' não foi encontrado.")
    except Exception as e:
        print(f"ERRO ao executar a análise '{nome_analise}': {e}")


df['top_10_produtos']['categoria'] = df['top_10_produtos']['categoria'].str.replace(r'_|-', ' ', regex=True)



arquivo_saida = 'Relatorio_completo_Olist.xlsx'

with pd.ExcelWriter(arquivo_saida) as writer:
    print(f"\n--- Exportando dados para '{arquivo_saida}' ---")

    for nome_aba, df_conteudo in df.items():
        df_conteudo.to_excel(
            writer,
            sheet_name = nome_aba,
            index=False
        )
        print(f"Aba '{nome_aba}' salva com sucesso.")
print("\nExportação concluída!")        