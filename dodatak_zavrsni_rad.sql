# priprema za zavrsni_rad
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\botao\OneDrive\Dokumenti\zavr-ni-rad\dodatak_zavrsni_rad.sql
drop database if exists sportski_centar;
create database sportski_centar default charset utf8mb4;
use sportski_centar;

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    kontakt varchar (20),
    email varchar (100),
    spol varchar (20)
);

-- create table najam(
--     sifra int not null primary key auto_increment,
--     naziv varchar(20) not null,
--     vrijeme int,
--     cijena decimal (18,2) 
-- );

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    email varchar (100) not null,
    oib char (11)
);

create table dvorana(
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    sport varchar (100) not null,
    lozinka varchar (20),
    cijena decimal(18,2)
);

create table termin(
    sifra int not null primary key auto_increment,
    djelatnik int not null,
    dvorana int not null,
    korisnik int not null,
    vrijeme datetime
);


alter table termin add foreign key (djelatnik) references djelatnik(sifra);
alter table termin add foreign key (dvorana) references dvorana(sifra);
alter table termin add foreign key (korisnik) references korisnik(sifra);

