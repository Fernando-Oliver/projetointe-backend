use BD_Hotelaria
GO

INSERT INTO FormaPagto VALUES 
(1,'CARTAO CREDITO'),
(2,'CARTAO DEBITO'),
(3,'DINHEIRO')

GO

INSERT INTO Login 
VALUES (1,'ADM')

GO

INSERT INTO Tipo_Quarto
VALUES (1,'Suites')
GO

INSERT INTO Funcionario VALUES 
(1,'PEDRO SOARES','89987656289','1167374040','PEDROCA@GMAIL.COM','2020-01-20',1),
(2,'JOÃO'        ,'12345678910','1189562345','joao@ig.com.br'   ,'2020-02-10',1),
(3,'MARIA'       ,'32154678910','1187542345','NULL'             ,'2020-05-20',1)
GO

INSERT INTO Quarto VALUES
(1,7889111213141,'Quarto ','basico',1,1,1),
(2,7889111213142,'Quarto','moderno',1,2,1),
(3,7889111213143,'Quarto','comum',1,3,1),
(4,7889111213144,'Quarto','premium',1,4,1),
(5,7889111213145,'Quarto','GOLD',1,5,1),
(6,7889111213146,'SUITE','Basica',1,6,1),
(7,7889111213147,'SUITE','Premium',1,7,1),
(8,7889111213148,'SUITE','Super Premium',1,8,1),
(9,7889111213149,'SUITE','Gold',1,9,1),
(10,7889111213150,'SUITE','Black',1,10,1)

GO
INSERT INTO CLIENTE VALUES
(1,'Adalberto Boaventura Taveiros','36089197084','11987654321','Rua das Fiandeiras,725'),
(2,'Luciana Gago ','57399094063','11987654322','Avenida Miguel Conejo, 159'),
(3,'Augusto Valério ','49685599092','11987654323','Rua Padre Vicente de Araújo,324'),
(4,'Suely Mota ','97562656045','11987654324','Rua Charles Cingria, 501'),
(5,'Catalina Mena ','74411477009','11987654325','Rua Jacobi Barrichello, 180'),
(6,'Aysha Botica ','52457339006','11987654326','Travessa Carlos Chavez, 104'),
(7,'Leah Severiano ','01363090038','11987654327','Rua Linda Flor, 411'),
(8,'Dennis Torreiro ','53721293010','11987654328','Alameda dos Anapurus, 1098'),
(9,'Rúben Seabra ','15141016021','11987654329','Rua Caminho do Pedestre A, 601'),
(10,'Helder Castilho ','94677537070','11987654330','Rua Era Colonial, 363'),
(11,'Stefan Sanches ','42690999099','11987654331','Rua Estrela Altair, 488'),
(12,'Bela Cunha ','47337115067','11987654332','Rua das Pavanas, 396')
GO

INSERT INTO Reserva VALUES
(1 ,'2021-01-02',1,1,1),
(2 ,'2021-02-03',1,1,2),
(3 ,'2021-03-04',1,1,3),
(4 ,'2021-03-04',2,2,3),
(5 ,'2021-04-05',2,3,2),
(6 ,'2020-02-06',2,1,1),
(7 ,'2020-01-07',4,2,10),
(8 ,'2021-01-08',4,3,9),
(9 ,'2020-10-09',4,2,4),
(10,'2020-11-10',4,3,3),
(11,'2029-12-11',4,3,3)
GO

INSERT INTO Item_reserva VALUES
(1,1,19,23,9),
(2,1,21,20,1),
(2,2,11,13,1),
(3,1,8,7,8),
(3,2,31,17,1),
(3,3,32,12,2),
(4,1,12,3,2),
(4,2,22,20,2),
(4,3,18,15,8),
(4,4,31,16,1)

GO

SELECT 'Login'