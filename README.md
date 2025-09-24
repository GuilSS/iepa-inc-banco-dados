# IEPA Inc. - Banco de Dados

Este repositório contém a modelagem e os scripts SQL para o sistema da **IEPA Inc.**, uma empresa fictícia de importação e exportação de produtos agrícolas.

## 📌 Descrição do Projeto

O projeto foi desenvolvido como exercício de modelagem e implementação de banco de dados.  
Ele contém tabelas, relacionamentos e dados de exemplo para simular um ambiente real, incluindo:

- Cadastro de **funcionários** e **setores**
- **Produtores terceirizados** e **empresas parceiras**
- **Áreas de produção**, **estoque** e **maquinário**
- **Navios**, **portos** e **produtos em trânsito**
- Controle de **produtos** e **negociações**
- Tabelas de **atrelamento** para relacionar funcionários e setores, e produtos com produtores/empresas

## 🔧 Tecnologias Utilizadas

- **PostgreSQL** (compatível com outros SGBDs relacionais)
- **SQL Padrão** para criação de tabelas e relacionamentos
- **DBML** para geração do diagrama (usando [dbdiagram.io](https://dbdiagram.io))

## 📚 Objetivo Educacional

Este projeto demonstra:
- Criação de tabelas com chaves primárias e estrangeiras
- Uso de `SEQUENCE` e `DEFAULT NEXTVAL` para gerar IDs automáticos
- Relacionamentos 1:N e N:N usando tabelas de atrelamento
- Inserção de dados fictícios para testes
- Modelagem de um cenário empresarial completo

## 🚀 Como Utilizar

1. Copie o conteúdo do arquivo [IEPA Inc_V8.sql](./IEPA%20Inc.sql)
2. Execute no seu SGBD (PostgreSQL recomendado)
3. Explore os dados com consultas `SELECT` para entender os relacionamentos

## 👨‍💻 Autor

Projeto desenvolvido por **Guilherme Sadlovski** como parte de estudos para administração de banco de dados e modelagem relacional.
