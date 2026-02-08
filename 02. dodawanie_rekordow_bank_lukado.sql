/*W regionie Zachód 200 pod Dyrektora Banku Dominikê £ukasiewicz podlega 5 placówek Banku.*/

insert into placowki_banku
(
id_placowki,
nr_oddzialu, 
adres_placowki, 
miasto, 
kierownik
)
values 
(1, '220', 'ul. ¯migrodzka 2', 'Wroclaw', 'Krzysztof Nowak'),
(2, '221', 'Ul. Borowska 102', 'Wroclaw', 'Monika Balak'),
(3, '222', 'ul. Krakowska 8', 'Walbrzych', 'Krystyna Paj¹k'),
(4, '223', 'ul. Boczna 32', 'Jelenia Gora', 'Tomasz Kawa'),
(5, '224', 'ul. Graniczna 17', 'Wroclaw', 'Katarzyna Kowalska');

/*W ka¿dym z 5 oddzia³ów pracuje od 4 do 5 osób ³¹cznie z kierownikiem placówki.*/

INSERT INTO pracownicy
(
  id_pracownika,
  imie_i_nazwisko,
  nr_oddzialu,
  stanowisko,
  wynagrodzenie
)
VALUES
(1,  'Krzysztof Nowak',220,'kierownik', 14200),
(2,  'Karolina Bak', 220,'mlodszy konsultant',5200),
(3,  'Ryszard Kot', 220, 'konsultant', 6000),
(4,  'Paulina Drzazga',220,'starszy konsultant', 6800),
(5,  'Krzysztof Ptak', 220,'starszy konsultant', 6800),
(6,  'Monika Balak', 221,'kierownik', 13800),
(7,  'Urszula Kwiat', 221, 'konsultant', 6700),
(8,  'Filip Krab', 221, 'mlodszy konsultant', 6300),
(9,  'Weronika Grzyb', 221,'starszy konsultant', 7000),
(10, 'Krystyna Pajak', 222,'kierownik', 14700),
(11, 'Witold Irys',222,'konsultant', 6500),
(12, 'Paulina Zbik',222,'konsultant', 6500),
(13, 'Pawel Rys', 222,'mlodszy konsultant', 6100),
(14, 'Tomasz Kawa',223,'kierownik',14000),
(15, 'Aleksandra Rysik',223,'mlodszy konsultant',6100),
(16, 'Rozalia Bluszcz',223,'starszy konsultant',7000),
(17, 'Urszula Drabina',223,'konsultant',6500),
(18, 'Katarzyna Kowalska',224,'kierownik',13900),
(19, 'Karol Slimak',224,'konsultant',6900),
(20, 'Barbara Tulipan',224,'starszy konsultant',7000),
(21, 'Bartosz Jowisz',224,'konsultant',6800),
(22, 'Klaudia Podrazka',224,'mlodszy konsultant',6200);

/*Poni¿ej zosta³a przedstawiona sprzeda¿ w ka¿dej z 5 placówek w dniach od 02.01.2026 do 09.01.2026. */

insert into sprzedaz
(id_placowki, data, nr_oddzialu, zalozone_konta, karty_kredytowe, limit_na_ROR, kredyty, inwestycje)
values
(1, '2026-01-02', 220, 2, 3, 2, 15200, 10000),
(2, '2026-01-02', 221, 1, 3, 1, 9000, 5000),
(3, '2026-01-02', 222, 1, 1, 0, 6500, 20000),
(4, '2026-01-02', 223, 2, 0, 3, 54300, 7000),
(5, '2026-01-02', 224, 0, 1, 3, 0, 5000),
(1, '2026-01-05', 220, 2, 1, 2, 30000, 1000),
(2, '2026-01-05', 221, 1, 1, 1, 4500, 3000),
(3, '2026-01-05', 222, 1, 1, 1, 12000, 5000),
(4, '2026-01-05', 223, 2, 0, 3, 14000, 3000),
(5, '2026-01-05', 224, 2, 1, 0, 5000, 0),
(1, '2026-01-06', 220, 2, 1, 2, 46000, 15000),
(2, '2026-01-06', 221, 1, 1, 1, 7000, 3000),
(3, '2026-01-06', 222, 1, 3, 0, 17000, 15000),
(4, '2026-01-06', 223, 2, 2, 3, 13000, 4750),
(5, '2026-01-06', 224, 1, 1, 1, 4500, 3000),
(1, '2026-01-07', 220, 2, 4, 0, 70000, 30000),
(2, '2026-01-07', 221, 1, 0, 1, 54000, 10000),
(3, '2026-01-07', 222, 1, 1, 0, 63000, 30000),
(4, '2026-01-07', 223, 1, 2, 3, 30000, 15000),
(5, '2026-01-07', 224, 1, 2, 0, 7000, 10000),
(1, '2026-01-08', 220, 2, 2, 0, 60000, 15000),
(2, '2026-01-08', 221, 1, 4, 1, 54000, 17000),
(3, '2026-01-08', 222, 1, 1, 1, 7000, 43000),
(4, '2026-01-08', 223, 1, 1, 3, 18400, 90000),
(5, '2026-01-08', 224, 1, 1, 0, 5700, 60000),
(1, '2026-01-09', 220, 1, 2, 0, 75300, 10000),
(2, '2026-01-09', 221, 1, 1, 1, 0, 5000),
(3, '2026-01-09', 222, 1, 3, 2, 6900, 0),
(4, '2026-01-09', 223, 3, 1, 2, 0, 5000),
(5, '2026-01-09', 224, 1, 3, 1, 1000, 7000)
