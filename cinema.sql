create database db_cinema;
use db_cinema;

create table tb_estudio (
    IDEstudio int not null primary key auto_increment,
    Nome varchar(45) not null,
    Proprietario varchar(45) not null,
    FaturamentoAnoAnterior decimal(10,2) not null,
    DataFundacao date not null
) default charset utf8;

create table tb_filmes (
    IDFilme int not null primary key auto_increment,
    Meses int not null,
    Nome varchar(45) not null,
    AnoLancamento year not null,
    CustoTotal decimal(10,2) not null,
    IDEstudio int not null,
    foreign key (IDEstudio) references tb_estudio (IDEstudio)
) default charset utf8;

create table tb_atores (
    IDAtor int not null primary key auto_increment,
    Nome varchar(45) not null,
    Nacionalidade varchar(45) not null,
    Idade int not null,
    Sexo char(1) not null
) default charset utf8;

create table tb_papel (
    IDPapel int not null primary key auto_increment,
    CacheAtor decimal(10,2) not null,
    Personagem varchar(45) not null,
    IDAtor int not null,
    IDFilme int not null,
    foreign key (IDAtor) references tb_atores (IDAtor),
    foreign key (IDFilme) references tb_filmes (IDFilme)
) default charset utf8;

insert into tb_estudio values
(1, "Estudio Banana", "Sr. Fruta", 327842.93, 01-01-2017),
(default, "Never Estudio", "Ale Sater", 3274628.28, 12-02-2019),
(default, "Producoes Mine", "Bruno Bloquinho", 12536.23, 10-03-1970),
(default, "Studio Ghibli", "Miyazaki", 125634.23, 18-09-2009),
(default, "Studio Lust", "Lana del Rey", 347328.93, 10-10-2015),
(default, "Oceano Productions", "Francisco Oceano", 623478.23, 20-08-1990),
(default, "Studio Scalene", "Matt", 12736.12, 14-12-2004),
(default, "Think Centre", "Jose Silva", 4248.83, 03-09-2018),
(default, "Estudio Watee", "Garrafinha Jr", 76345.34, 20-12-1998),
(default, "Paixao Producoes", "Luiz Antonio", 999999.99, 09-02-2023);

insert into tb_filmes values
(1, 7, "Lalaland", 2016, 734895.95, 1),
(default, 12, "Closure", 2023, 76348.93, 2),
(default, 5, "Cubos", 1989, 12383.62, 3),
(default, 2, "KungFu Panda", 2018, 347682.83, 4),
(default, 4, "Treinando Dragão", 2013, 762348.34, 5),
(default, 6, "Atividade Paranormal", 2004, 76234.93, 6),
(default, 9, "Luizinho Aventuras", 2005, 63524.83, 7),
(default, 3, "Abismo", 2019, 765485.95, 8),
(default, 1, "Zago Adventures", 1999, 65234.34, 9),
(default, 4, "Clones", 2023, 643759.84, 10);

insert into tb_atores values
(10, 'Emma Stone', "Norte Americano", 23, "F"),
(default, 'Knalb', "Brasileiro", 18, "M"),
(default, 'Vitoria Zago', 'Brasileiro', 18, 'F'),
(default, 'Bandit Healer', "Australiano", 43, "M"),
(default, 'Osamu Dazai', 'Japones', 24, "M"),
(default, 'Anya Taylor', 'Britanico', '20', 'F'),
(default, 'Willow', 'Norte Americano', '22', 'F'),
(default, 'Bruna Marquezine', 'Brasileiro', '26', 'F'),
(default, 'Nana Hachi', 'Japones', 23, 'F'),
(default, 'Donald Glover', 'Canadense', 40, 'M');

insert into tb_papel values
(100, 1000.00, 'Mia Stone', 10, 1),
(default,30000.00, 'Panda', 19, 4 ),
(default,34950.50, 'Dad Healer', 13, 5),
(default, 201200.70, 'Sebastian', 14, 1 ),
(default,7000.99, 'Mariana', 18, 8),
(default, 15000.90, 'Zaguinho Jovem', 12, 9),
(default,201920.30, 'Blankzinho', 11, 7),
(default,3200.80, 'Smith',16, 3),
(default, 17000.00,'Rainha', 15, 6),
(default, 20000.00, 'Yoko', 17, 10);
