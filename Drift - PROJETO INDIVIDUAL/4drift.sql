CREATE DATABASE 4drift;

USE 4drift;

CREATE TABLE usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(50),
senha varchar(45)
);

alter table usuario ADD COLUMN fkPilotoFavorito int;

alter table usuario add constraint fkFav foreign key (fkPilotoFavorito) REFERENCES Piloto(idPiloto);

select * from usuario;
select * from veiculo;
select * from piloto;

CREATE TABLE Piloto (
idPiloto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
idade CHAR(2),
nacionalidade VARCHAR(30)
);

alter table Piloto ADD COLUMN fkVeiculo int;

alter table Piloto add constraint fkVeiculo foreign key (fkVeiculo) REFERENCES Veiculo(idVeiculo);

alter table Piloto ADD COLUMN fkMotor int;

alter table Piloto add constraint fkMotorzao foreign key (fkMotor) REFERENCES motor(idMotor);

CREATE TABLE veiculo (
idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR(45),
marca VARCHAR(45)
) AUTO_INCREMENT = 2000;

CREATE TABLE motor (
idMotor INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)
) AUTO_INCREMENT = 3000;

INSERT INTO motor VALUES 
(NULL,'2JZ'),
(NULL,'1JZ'),
(NULL,'RB26'),
(NULL,'LS3'),
(NULL,'V8');

INSERT INTO veiculo VALUES 
(NULL,'350z','nissan'),
(NULL,'s15','nissan'),
(NULL,'supra','toyota'),
(NULL,'corolla GR','toyota'),
(NULL,'GR 86','toyota'),
(NULL,'370z','nissan'),
(NULL,'mustang','rtr'),
(NULL,'e36','bmw'),
(NULL,'f80','bmw'),
(NULL,'400z','nissan'),
(NULL,'gt86','toyota');

INSERT INTO Piloto VALUES 
(NULL,'Adam lz','27', 'US','2006','3004'),
(NULL,'Odi bakchis','39', 'US','2001','3000'),
(NULL,'Chelsea Denofa','34',' US','2006','3004'),
(NULL,'Chris Forsberg','40', 'US','2009','3000'),
(NULL,'Darren Kelly','33',' AU','2011','3005'),
(NULL,'Dean Kearney','34',' HOL','2012','3006'),
(NULL,'Diego Higa','26', 'BR','2010','3000'),
(NULL,'Dylan Hughes','31',' AU','2007','3000'),
(NULL,'Frederic Aasbo','37', 'NOR','2002','3000'),
(NULL,'Forest Wang','40',' US','2001','3000'),
(NULL,'James Deane','31',' HOL','2006','3004'),
(NULL,'Ryan Tuerck','38', 'US','2003','3000'),
(NULL,'Vaughn Gittin Jr','42', 'US','2006','3000'),
(NULL,'Matt Field','33',' US','2013','3004'),
(NULL,'Ken Gushi','36', 'JP','2004','3000'),
(NULL,'Jonathan Castro','39',' Republica Dominicana','2004','3000');

select * from piloto;

select * from veiculo;

select * from motor;

select * from piloto join veiculo 
	on fkVeiculo = idVeiculo 
    join motor on fkMotor = idMotor;

select p.nome, p.idade, p.nacionalidade, v.modelo, v.marca, m.nome as 'Nome Motor' from piloto p join veiculo v 
	on fkVeiculo = idVeiculo 
    join motor m on fkMotor = idMotor where idPiloto = 1
		order by idPiloto;
        
			
        
    
INSERT INTO veiculo VALUES 
(null, 'vantage','aston martin');

INSERT INTO motor VALUES
(null,'v12'); 

INSERT INTO veiculo VALUES 
(null, 'viper','dodge');

INSERT INTO motor VALUES
(null,'v10'); 

INSERT INTO veiculo VALUES 
(null, 'corvette','chevrolet');