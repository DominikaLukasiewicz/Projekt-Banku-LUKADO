/*Na pocz¹tku stworzy³am now¹ bazê danych o nazwie bank_lukado*/
create database bank_lukado

/*W tabeli umieœci³am 5 placówek banku: 3 znajduj¹ siê we Wroc³awiu, 1 w Jeleniej Górzej i 1 w Wa³brzychu.*/

create table placowki_banku (
id_placowki int primary key,
nr_oddzialu int, 
adres_placowki varchar(100),
miasto varchar(100),
kierownik varchar(100)
)

/*Do tabeli doda³am pracowników banku.*/

create table pracownicy (
id_pracownika int primary key,
imie_i_nazwisko varchar (100),
nr_oddzialu int,
stanowisko varchar(100),
wynagrodzenie decimal (10,2)
)

/*Nastêpnie doda³am tablelê "sprzeda¿", poniewa¿ podmiotem badañ jest analiza sprzeda¿y w poszczególnych placówkach banku.*/

create table sprzedaz 
(id_placowki int,
data date,
nr_oddzialu int,
zalozone_konta int,
karty_kredytowe int,
limit_na_ROR int,
kredyty decimal (10,2),
inwestycje decimal (10,2)
)