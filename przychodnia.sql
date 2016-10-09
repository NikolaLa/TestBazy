

create database przychodnia;

create table Gabinet (
Numer_gabinetu int not null,
specjalizacje varchar(255),
daty_przyjec date,
godziny_przyjec_od varchar(255),
godziny_przyjec_do varchar(255),
czy_czynne bool
); 

insert into Gabinet values('001','Stomatolog','12-12-2016','8:00','16:00');
insert into Gabinet values('001','Stomatolog','13-12-2016','8:00','16:00');
insert into Gabinet values('001','Stomatolog','14-12-2016','8:00','16:00');



create table Lekarz (
ID_lekarz int,
specjalista varchar(225) not null,
Imie_lekarza varchar(225),
Nazwisko_lekarza varchar(225),
Wolne_miejsca int,
terminy date,
gabinet int

PRIMARY KEY 
FOREIGN KEY
REFERENCES Gabinet(Numer_gabinetu)
); 


insert into Lekarz values('1','Stomatolog','Jan', 'Kowalski','10','23-12-2016','001');
insert into Lekarz values('1','Stomatolog','Jan', 'Kowalski','10','23-01-2017','001');
insert into Lekarz values('2','Dermatolog','Alen', 'Walker','10','23-01-2017','002');
insert into Lekarz values('2','Dermatolog','Alen', 'Walker','5','10-02-2017','002');


create table Pacjent (
ID_Pacjent int,
Imie_Pacjenta varchar(255),
Nazwisko_pacjenta varchar(255),
Pesel int ;
); 


insert into Pacjent values('1','Kazio', 'Towalski', '123450789');
insert into Pacjent values('2','Gdzie', 'Wally', '123450749');
insert into Pacjent values('3','Pear', 'Kang', '143450789');


create view szukaj_uslugi
(
ID_Lekarz int,
ID_Pacjent int

PRIMARY KEY 
FOREIGN KEY
REFERENCES Gabinet(Numer_gabinetu)

);

create view Lista_pacjentow
(

);




