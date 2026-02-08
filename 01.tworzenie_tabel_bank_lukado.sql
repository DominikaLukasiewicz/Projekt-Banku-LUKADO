/*Na pocz�tku stworzy�am now� baz� danych o nazwie bank_lukado*/
create database bank_lukado

/*W tabeli umie�ci�am 5 plac�wek banku: 3 znajduj� si� we Wroc�awiu, 1 w Jeleniej G�rzej i 1 w Wa�brzychu.*/

create table placowki_banku (
id_placowki int primary key,
nr_oddzialu int, 
adres_placowki varchar(100),
miasto varchar(100),
kierownik varchar(100)
)

/*Do tabeli doda�am pracownik�w banku.*/

create table pracownicy (
id_pracownika int primary key,
imie_i_nazwisko varchar (100),
nr_oddzialu int,
stanowisko varchar(100),
wynagrodzenie decimal (10,2)
)

/*Nast�pnie doda�am tablel� "sprzeda�", poniewa� podmiotem bada� jest analiza sprzeda�y w poszczeg�lnych plac�wkach banku.*/

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
