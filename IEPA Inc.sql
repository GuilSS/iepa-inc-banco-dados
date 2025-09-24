/*BANCO DE DADOS-TEMA: IEPA Inc.
EMPRESA DE IMPORTAÇÃO E EXPORTAÇÃO DE PRODUTOS AGRICOLAS*/
-----------------------------------
CREATE SEQUENCE seq_fun INCREMENT 1 START 1;
CREATE TABLE funcionario(
	id_fun INT PRIMARY KEY DEFAULT NEXTVAL ('seq_fun'),
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	cpf CHAR(11) UNIQUE NOT NULL,
	salario MONEY
)
INSERT INTO funcionario (nome,data_nascimento,cpf,salario) VALUES
('Arthur','11/12/2002',12345678901,9535),
('Antonio','21/06/2003',12345678902,3462),
('Alexandre','06/07/1987',12345678903,8466),
('Nelson','23/05/1999',12345678904,5737),
('Roger','16/05/1987',12345678905,1643),
('Evandra','31/03/1982',12345678906,1324),
('Lucas','24/07/1999',12345678907,3299),
('Pedro','02/02/1992',12345678908,4066),
('Milene','06/02/1995',12345678909,9363),
('Jean','09/08/1996',12345678910,3154),
('Vitor','12/11/1987',12345678911,6526),
('Amanda','19/01/1982',12345678912,4879),
('Gabriel','22/06/1997',12345678913,6735),
('Natan','08/04/1995',12345678914,7321),
('Cleide','24/04/1994',12345678915,3819),
('Ferndando','23/09/1991',12345678916,7927),
('Rafael','26/12/1990',12345678917,3411),
('Natalia','17/11/2002',12345678918,6940),
('Cassio','11/04/1999',12345678919,3417),
('Vlaudinei','19/07/1984',12345678920,3437),
('Rosane','16/11/1999',12345678921,1223),
('Adriano','27/08/1985',12345678922,6291),
('Tamara','09/05/2003',12345678923,9776),
('Soraya','13/03/1985',12345678924,6514),
('Isaac','04/04/1993',12345678925,9775),
('Jeferson','26/10/1996',12345678926,6419),
('Lueji','26/10/2000',12345678927,2977),
('Iuri','14/04/1983',12345678928,9423),
('Timoteo','21/04/1991',12345678929,3404),
('Dereke','26/04/1987',12345678930,8458),
('Marcel','17/09/1988',12345678931,5051),
('Marcos','01/05/1982',12345678932,2938),
('Kayla','23/04/2000',12345678933,3517),
('Joao','07/05/1992',12345678934,7675),
('Alexsandro','20/04/1996',12345678935,2563),
('Adriela','15/09/1999',12345678936,3841),
('Graciana','08/03/1991',12345678937,9974),
('Andressa','20/08/1991',12345678938,5629),
('Clarisse','04/05/1999',12345678939,3204),
('Telmo','05/08/1991',12345678940,3128),
('Helton','30/12/2000',12345678941,2155),
('Asael','22/11/1989',12345678942,8864),
('Ellen','21/01/1985',12345678943,8477),
('Catia','14/06/1998',12345678944,9903),
('Adriei','14/11/1996',12345678945,6791),
('Estevao','15/04/1985',12345678946,1888),
('Zaira','28/04/1997',12345678947,6842),
('Isabela','18/10/1990',12345678948,9208),
('Melinda','27/11/2001',12345678949,1548),
('Nhatanael','07/02/1994',12345678950,4986)
SELECT * FROM funcionario
/////////////////////////////////////////////////
CREATE SEQUENCE seq_setor INCREMENT 10 START 1;
CREATE TABLE setor(
	id_setor INT PRIMARY KEY DEFAULT NEXTVAL ('seq_setor'),
	nome_setor VARCHAR(50) NOT NULL,
	descricao VARCHAR(120),
	qtde_func INT
)
INSERT INTO setor (nome_setor,descricao,qtde_func) VALUES
('marketing','vendas dos produtos',10),
('financeiro','manipula as fincancas',20),
('farmaceutico','producao e controle de inceticidas',30)
SELECT * FROM setor
///////////////////////////////////////////////
CREATE SEQUENCE seq_produtores INCREMENT 50 START 1;
CREATE TABLE produtores_tercerizados(
	id_produtores INT PRIMARY KEY DEFAULT NEXTVAL ('seq_produtores'),
	cod_prot INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE,
	cpf CHAR(11) UNIQUE NOT NULL,
	cnpj CHAR(18) UNIQUE NOT NULL,
	estado VARCHAR(2),
	cidade VARCHAR(50),
	cep CHAR(8)
)
INSERT INTO produtores_tercerizados (cod_prot,nome,data_nascimento,cpf,cnpj,estado,cidade,cep) VALUES
(1210,'Reginaldo','10/12/1988',12345678901,'123456789012345601','RA','Apucarana','12345601'),
(1320,'Elson','16/02/1991',12345678902,'123456789012345602','SP','Barras','12345602'),
(1430,'Marley','10/12/1979',12345678903,'123456789012345603','MT','Barreiras','12345603')
SELECT * FROM produtores_tercerizados
//////////////////////////////////////////////
CREATE SEQUENCE seq_empresas INCREMENT 1 START 1;
CREATE TABLE empresas_cadastradas(
	id_empresas INT PRIMARY KEY DEFAULT NEXTVAL ('seq_empresas'),
	cnpj CHAR(18) UNIQUE NOT NULL,
	nome VARCHAR(100) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	pais VARCHAR(30),
	cidade VARCHAR(50)
)
INSERT INTO empresas_cadastradas (cnpj,nome,tipo,pais,cidade) VALUES
('123456789012345604','DHPOU inc','alimenticia','BR','cianorte'),
('123456789012345605','IU inc','alimenticia','BR','Barreiras'),
('123456789012345606','POIJ inc','alimenticia','BR','Bera Mar')
SELECT * FROM empresas_cadastradas
////////////////////////////////////////////
CREATE SEQUENCE seq_estoque INCREMENT 1 START 100;
CREATE TABLE estoque(
	id_estoque INT PRIMARY KEY DEFAULT NEXTVAL ('seq_estoque'),
	qtde INT NOT NULL,
	estado VARCHAR(2),
	cidade VARCHAR(50),
	cep CHAR(8),
	rua VARCHAR(100),
	numero INT,
	suportados INT NOT NULL
)
INSERT INTO estoque (qtde,estado,cidade,cep,rua,numero,suportados) VALUES
(1000,'SP','Bera Mar','12345604','R. Laurino',4004,5000),
(800,'SP','Zona Sul','12345605','R. Jonas',5005,4000),
(600,'SP','Barao','12345606','R. Velha',5005,3000)
SELECT * FROM estoque
///////////////////////////////////////////////
CREATE SEQUENCE seq_areas INCREMENT 2 START 1;
CREATE TABLE areas_de_producao(
	id_regiao INT PRIMARY KEY DEFAULT NEXTVAL ('seq_areas'),
	estado VARCHAR(2) NOT NULL,
	cidade VARCHAR(50),
	cep CHAR(8) NOT NULL,
	rua VARCHAR(100),
	numero INT,
	metro_quadrado INT NOT NULL
)
INSERT INTO areas_de_producao (estado,cidade,cep,rua,numero,metro_quadrado) VALUES
('PR','Guarapuava','12345601','R. Sebastiao',1001,800),
('SC','Caçador','12345602','R. Alisteu',2002,1600),
('RS','Santa Rosa','12345603','R. Nerobasta',3003,2400)
SELECT * FROM areas_de_producao
//////////////////////////////////////////////
CREATE SEQUENCE seq_porto INCREMENT 1 START 1;
CREATE TABLE porto(
	id_porto INT PRIMARY KEY DEFAULT NEXTVAL ('seq_porto'),
	cod_porto INT NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	nome VARCHAR(100),
	armazens INT NOT NULL
)
INSERT INTO porto (cod_porto,cidade,nome,armazens) VALUES
(1540,'SP','Porto de Santos','500'),
(1650,'PR','Porto de Paranagua','400'),
(1760,'SC','Porto de Itapoa','300')
SELECT * FROM porto
//////////////////////////////////////////////
CREATE SEQUENCE seq_navio INCREMENT 1 START 1;
CREATE TABLE navio(
	id_navio INT PRIMARY KEY DEFAULT NEXTVAL ('seq_navio'),
	cod_nav INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	tipo_carga VARCHAR(50) NOT NULL,
	peso_suportado INT NOT NULL,
	chegada TIMESTAMP,
	id_porto INT NOT NULL,
	FOREIGN KEY (id_porto) REFERENCES porto
)
INSERT INTO navio (cod_nav,nome,tipo_carga,peso_suportado,chegada,id_porto) VALUES
(1110,'Lan Hua Hai','graneleiro',90.000,'05/07/2021 19:10:00',1),
(1220,'HMM Algeciras','graneleiro',500.000,'21/06/2021 06:41:00',2),
(1760,'IEPA inc','graneleiro',20.000,'30/04/2021 14:00:00',3)
SELECT * FROM navio
/////////////////////////////////////////////////
CREATE SEQUENCE seq_transito INCREMENT 1 START 1;
CREATE TABLE produtos_em_transito(
	id_transito INT PRIMARY KEY DEFAULT NEXTVAL ('seq_transito'),
	destino_porto VARCHAR(100) NOT NULL,
	dia_chegada DATE NOT NULL,
	id_navio int NOT NULL,
	FOREIGN KEY (id_navio) REFERENCES navio
)
INSERT INTO produtos_em_transito (destino_porto,dia_chegada,id_navio) VALUES
('Portonave','28/01/2022',3),
('Porto de Ria Grande','10/03/2022',1),
('Porto de Suape','12/03/2022',2)
SELECT * FROM produtos_em_transito
///////////////////////////////////////////////
CREATE SEQUENCE seq_maq INCREMENT 1 START 1;
CREATE TABLE maquinario(
	registro INT PRIMARY KEY DEFAULT NEXTVAL ('seq_maq'),
	tipo VARCHAR (100) NOT NULL,
	valor MONEY,
	id_regiao INT NOT NULL,
	FOREIGN KEY (id_regiao) REFERENCES areas_de_producao
)
INSERT INTO maquinario (registro,tipo,valor,id_regiao) VALUES
(10,'semeadeira',400000,1),
(20,'colheitadeira',600000,1),
(30,'pulverizador',900000,1)
SELECT * FROM maquinario
////////////////////////////////////////
CREATE SEQUENCE seq_pro INCREMENT 2 START 1;
CREATE TABLE produto(
	id_produto INT PRIMARY KEY DEFAULT NEXTVAL ('seq_pro'),
	nome VARCHAR(50) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	valor MONEY NOT NULL,
	id_regiao INT NOT NULL,
	FOREIGN KEY (id_regiao) REFERENCES areas_de_producao,
	id_estoque INT NOT NULL,
	FOREIGN KEY (id_estoque) REFERENCES estoque
)
INSERT INTO produto (nome,tipo,valor,id_regiao,id_estoque) VALUES
('Milho','Grao',1.00,1,1),
('Arroz','Grao',2.00,2,2),
('Soja','Grao',3.00,3,3)
SELECT * FROM produto
------------atrelamentos-----------
CREATE SEQUENCE seq_atr_local INCREMENT 1 START 1;
CREATE TABLE local_funcionario_atr(
	id_atr_local INT PRIMARY KEY DEFAULT NEXTVAL ('seq_atr_local'),
	id_fun INT NOT NULL,
	FOREIGN KEY (id_fun) REFERENCES funcionario,
	id_setor INT NOT NULL,
	FOREIGN KEY (id_setor) REFERENCES setor
)/*atr1*/
INSERT INTO local_funcionario_atr (id_fun,id_setor) VALUES
(1,3),
(2,1),
(3,2)
SELECT * FROM local_funcionario_atr
////////////////////////////////////////////////////
CREATE SEQUENCE seq_atr_relacao INCREMENT 1 START 1;
CREATE TABLE relacao_produto_atr(
	id_atr_relacao INT PRIMARY KEY DEFAULT NEXTVAL ('seq_atr_relacao'),
	id_produto INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produto,
	id_produtores INT NOT NULL,
	FOREIGN KEY (id_produtores) REFERENCES produtores_tercerizados,
	id_empresas INT NOT NULL,
	FOREIGN KEY (id_empresas) REFERENCES empresas_cadastradas
)/*atr2*/
INSERT INTO relacao_produto_atr (id_produto,id_produtores,id_empresas) VALUES
(1,3,2),
(2,1,1),
(3,2,3)
SELECT * FROM relacao_produto_atr
/////////////////////////////////////////
CREATE SEQUENCE seq_neg INCREMENT 1 START 1;
CREATE TABLE negociacao(
	id_neg INT PRIMARY KEY DEFAULT NEXTVAL ('seq_neg'),
	data_pedido DATE NOT NULL,
	hora_pedido TIME,
	data_entrega DATE,
	valor MONEY NOT NULL,
	qtde_negociada INT NOT NULL,
	id_produto INT NOT NULL,
	FOREIGN KEY (id_produto) REFERENCES produto,
	id_transito INT NOT NULL,
	FOREIGN KEY (id_transito) REFERENCES produtos_em_transito
)/*atr3*/
INSERT INTO negociacao (data_pedido,hora_pedido,data_entrega,valor,qtde_negociada,id_produto,id_transito) VALUES
('19/08/2021','14:00:00','30/01/2022',50.000,20.000,1,1),
('18/08/2021','13:00:00','13/03/2022',400.000,320.000,2,1),
('17/08/2021','12:00:00','17/03/2022',48.000,19.000,3,1)
SELECT * FROM negociacao
////////////////////////////////////////