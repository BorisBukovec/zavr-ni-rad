# priprema za zavrsni_rad
# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\botao\DZ\EdunovaPP25\SQL\dodatak_zavrsni_rad.sql
drop database if exists sportski_centar;
create database sportski_centar default charset utf8mb4;
use sportski_centar;

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    kontakt varchar (20),
    email varchar (100),
    spol varchar (20),
    dvorana int not null
);
create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    datum_pocetka datetime,
    vrijeme int,
    cijena decimal (18,2),
    djelatnik int not null,
    korisnik int not null,
    dvorana int not null
);
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
    lozinka varchar (20)
);
alter table usluga add foreign key (djelatnik) references djelatnik(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);
alter table usluga add foreign key (dvorana) references dvorana(sifra);
alter table djelatnik add foreign key (dvorana) references dvorana(sifra);

