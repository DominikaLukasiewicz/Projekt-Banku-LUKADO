SELECT
    nr_oddzialu,
    SUM(kredyty) AS laczna_kwota_sprzedazy_kredytow,
    SUM(karty_kredytowe) AS laczna_suma_sprzedazy_kart_kredytowych,
    sum(zalozone_konta) as ilosc_zalozonych_kont,
    sum(limit_na_ROR) as laczna_suma_sprzedazy_limitow_na_ROR,
    sum(inwestycje) as laczna_suma_sprzedazy_inwestycji
FROM sprzedaz
GROUP BY nr_oddzialu
ORDER BY SUM(kredyty) DESC;

/*Po wprowadzeniu zapytania widaæ, ¿e najwiêksza sprzeda¿ kredytów gotówkowych by³a w oddziale nr 220 i wynosios³a 296500 z³, a najmniejsza w oddziale nr 224 - 23200z³.
Przy okazji mo¿emy te¿ przyjrzeæ siê sprzeda¿y pozosta³ych produktów. Wniosek jest jeden: placówki 220, 221 i 223 maj¹ najlepsz¹ sprzeda¿.*/

select 
wynagrodzenie,
nr_oddzialu,
imie_i_nazwisko
from pracownicy
group by wynagrodzenie, imie_i_nazwisko, nr_oddzialu

/*Nastêpnie postanowi³am sprawdziæ, czy niska sprzeda¿ w placówce nr 222 i 224 wynika z niezadowal¹cych zarobków pracowników. 
Wniosek: zarobki w ka¿dym z oddzia³ów s¹ na porównywalnym poziomie.*/

select
pb.miasto,
pb.nr_oddzialu,
sum(s.kredyty) as laczna_kwota_sprzedazy_kredytow
from placowki_banku pb
inner join sprzedaz s on pb.nr_oddzialu = s.nr_oddzialu
group by pb.miasto, pb.nr_oddzialu
order by sum(s.kredyty) desc;


/*Sprawdzi³am, jak klaruje siê sprzeda¿ w poszczególnych miastach.
Zarówno najwiêksza(oddzia³ 220) jak i najmniejsza sprzeda¿(oddzia³ 224) jest we Wroc³awiu.*/

select 
pb.adres_placowki,
pb.miasto,
sum(s.kredyty) as laczna_kwota_sprzedazy_kredytow
from placowki_banku pb
inner join sprzedaz s on pb.nr_oddzialu = s.nr_oddzialu
group by pb.adres_placowki, pb.miasto
order by sum(s.kredyty) desc;

/*Nastêpnie sprawdzi³am dok³adn¹ lokalizacjê placówek z najlepsz¹ i najgrosz¹ sprzeda¿¹.
Wniosek: placówka nr 220 znajduje siê na obrze¿ach miasta, w jej okolicy, nie ma ¿adnego innego oddzia³u banku.
Oddzia³ nr 224 jest po³o¿ona w œcis³ym centrum miasta, na prze³omie kilometra znajduj¹ siê placówki innych banków.*/