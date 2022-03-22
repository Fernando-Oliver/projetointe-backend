
Create DataBase BD_Hotelaria
GO

use BD_Hotelaria
GO

IF OBJECT_ID(N'Item_Reserva') IS NOT NULL
	DROP TABLE Item_reserva
GO

Create Table Item_Reserva (
   idreserva     int   not null,
   idItemreserva int   not null,
   idQuarto      int   not null,
   idNumero      int   not null,
   preco         float not null,
   constraint PK_ITEM_RESERVA PRIMARY KEY (idReserva)
   )
   GO

   IF OBJECT_ID(N'Reserva') IS NOT NULL
	DROP TABLE Reserva

   Create Table Reserva (
   idReserva      int  not null,
   DataReserva    date not null,
   idFormaPgto    int  not null,
   idFuncionario  int  not null,
   idCliente      int  not null,
   constraint PK_RESERVA PRIMARY KEY (idReserva)
   )
   GO
   
   IF OBJECT_ID(N'Quarto') IS NOT NULL
	DROP TABLE Quarto
GO

   Create Table Quarto (

   idquarto    int,
   cod_Barras  Numeric not null,
   descricao   varchar (10) not null,
   categoria   varchar (10) not null,
   Quantidade  Int   not null,
   preco       float   not null,
   idcategoria int
   CONSTRAINT PK_QUARTO PRIMARY KEY (idQuarto)
   )
   GO

   IF OBJECT_ID(N'cliente') IS NOT NULL
	DROP TABLE cliente
GO
   Create Table Cliente (
   idCliente   int,
   Nome        Varchar(50) not null,
   CPF         char   (11) not null,
   Telefone    Char   (11) not null,
   Endereco    Varchar(50) not null,
   CONSTRAINT PK_CLIENTE PRIMARY KEY (IdCliente)

   ) 
   GO
   
   IF OBJECT_ID(N'Tipo_Quarto') IS NOT NULL
	DROP TABLE Tipo_Quarto
GO
   
   Create Table Tipo_Quarto (
   IdCategoria int,
   Categoria Varchar (50) not null, 
   CONSTRAINT PK_TIPO_QUARTO PRIMARY KEY (IdCategoria)
   )
   GO

   IF OBJECT_ID(N'Funcionario') IS NOT NULL
	DROP TABLE Funcionario
GO
   
   Create Table Funcionario (
   idFuncionario int, 
   Nome          Varchar(50)  not null,
   CPF           Char   (11)  not null,
   Telefone      Char   (11)  not null,
   Email         Varchar(50)  not null,
   DataAdmissao  date,
   idUsuario     int,
   CONSTRAINT  PK_Funcionario PRIMARY KEY (idFuncionario)
   )
   GO

   IF OBJECT_ID(N'[Login]') IS NOT NULL
	DROP TABLE [Login]
GO

   Create Table [Login] (
   idUsuario int,
   Descricao Varchar(50)  not null,
   CONSTRAINT PK_LOGIN PRIMARY KEY (idUsuario)
   )
   GO
   
  IF OBJECT_ID(N'FormaPagto') IS NOT NULL
	DROP TABLE FormaPagto
GO
    
  Create Table FormaPagto (
  idFormaPagto   int          not null,
  descricao      varchar(50)  not null,
  CONSTRAINT PK_FORMAPAGTO PRIMARY KEY (idFormaPagto)
  )
  GO

  ALTER TABLE Quarto ADD CONSTRAINT FK_idCategoria
    FOREIGN KEY (idCategoria)
    REFERENCES Tipo_Produto (idCategoria)
GO
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_idUsuario
    FOREIGN KEY (idUsuario)
    REFERENCES Login (idUsuario)
GO
 
ALTER TABLE Reserva ADD CONSTRAINT FK_IdFormaPgto
    FOREIGN KEY (idFormaPgto)
    REFERENCES FormaPagto (idFormaPgto)
GO
	 
ALTER TABLE Reserva ADD CONSTRAINT FK_IdFuncionario
    FOREIGN KEY (idFuncionario)
    REFERENCES Funcionario (idFuncionario)
GO

ALTER TABLE Reserva ADD CONSTRAINT FK_IdCliente
    FOREIGN KEY ( idCliente)
    REFERENCES Cliente (idCliente)
GO

ALTER TABLE Item_Reserva ADD CONSTRAINT FK_IdQuarto
    FOREIGN KEY (idQuarto)
    REFERENCES Produto (idQuarto)
GO

ALTER TABLE Item_Reserva ADD CONSTRAINT FK_IdReserva
    FOREIGN KEY (idReserva)
    REFERENCES Venda (idReserva)
GO
  


