set foreign_key_checks = 0;

drop table if exists Reservations;
drop table if exists Performances;
drop table if exists Theaters;
drop table if exists Movies;
drop table if exists Users;

set foreign_key_checks = 1;

create table Users(
userName varchar(20) not null,
name varchar(20) not null,
address	 varchar(20),
telNr integer not null,
primary key (userName)
); 
create table Movies(
name varchar(20) not null,
primary key (name)
); 
create table Theaters(
name varchar(20) not null,
nrSeats	 integer not null,
primary key (name)
); 
create table Performances(
movieName varchar(20),
theaterName varchar(20),
thedate date not null,
freeSeats integer not null,
foreign key (movieName) references Movies(name),
foreign key (theaterName) references Theaters(name),
primary key (movieName, thedate)
); 
create table Reservations(
id integer not null auto_increment,
perdate date not null,
movieName varchar(20) not null,
userName varchar(20) not null,		
primary key (id),
foreign key (movieName, perdate) references Performances(movieName, thedate),
foreign key (userName) references Users(userName)
); 
insert into Users(userName, name, address, telNr) values('Tintin',  'TintinB', 'Krokus', 1234);
insert into Users(userName, name, address, telNr) values('Erik',  'ErikS', 'Tradgardsvagen', 5678);
insert into Theaters(name, nrSeats) values('SF Malmo', 100);
insert into Theaters(name, nrSeats) values('SF Lund', 10);
insert into Movies(name) values('Star Wars');
insert into Movies(name) values('InAndOut');
insert into Performances(movieName, theaterName, thedate, freeSeats) values('Star Wars', 'SF Malmo','2016-02-13', (SELECT nrSeats FROM Theaters WHERE Theaters.name = 'SF Malmo'));
insert into Performances(movieName, theaterName, thedate, freeSeats) values('InAndOut', 'SF Lund','2017-02-14', (SELECT nrSeats FROM Theaters WHERE Theaters.name = 'SF Lund'));