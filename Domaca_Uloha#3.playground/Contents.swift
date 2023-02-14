import UIKit


//3rd assignment

//1. Za pomoci podmienok zisti a vypíš, či bol rok 1954 priestupný.

//Vzorec na výpočet priestupného roku je nasledovný:
//1. rok musí byť deliteľný 4
//2. následne ale je deliteľný 400, alebo nie je deliteľný 100.
//- priestupné roky boli napríklad: 1984, 1992, 2000
//- nepriestupné roky sú napríklad 1500, 1700 a 2100

//1.
//najprv si vytiahneme premenne ktore budeme potrebovat a ulozime si aj lektorom spomenute roky do poli

let osudnyRok =  1954
var priestupneRoky   = [1984, 1992, 2000 ]
var nepriestupneRoky = [1500, 1700, 2100 ]


/*
nasledne si urcime podmienky:
 -   Prestupny rok musi byt deliteltny 4 napr. 1984
 -   Moze sa ale stat ze rok je rovnomerne delitelny cislom 100 napr. 1500
 -   V takomto pripade musi byt rok delitelny aj 400 napr. 2000 a tym padom 1500 odpada

ked mame urcene podmienky musime ich zdruzit lebo neporovnavame dve podmienky ale tri, potom uz len napiseme jednoduchy if statement kde to vsetko overime
 
Teoreticky som si pomohol tymto clankom https://learn.microsoft.com/cs-cz/office/troubleshoot/excel/determine-a-leap-year
*/


if (osudnyRok.isMultiple(of: 4) && !(osudnyRok.isMultiple(of: 100)) || osudnyRok.isMultiple(of: 400)) {
    print("Rok \(osudnyRok) je prestupny")
} else { print("Rok \(osudnyRok) nieje prestupny")
    
}



// Cas si nas vzorec overit naostro -  najprv vezmeme lektorom poskytnutne polia rokov, mergneme ich do setu a pouzijeme iteraciu pomocou for loopy a overime ci lektor neni pothemut a nepodsunul nam nepravdive data

print()
let lektoroveRoky = priestupneRoky + nepriestupneRoky


for i in Set(lektoroveRoky) {
    if (i.isMultiple(of: 4) && !(i.isMultiple(of: 100)) || i.isMultiple(of: 400)) {
        print("Rok \(i) je prestupny")
    } else { print("Rok \(i) nieje prestupny")
        
    }
}

/*
Nasledne vzorec pouzijeme na nahodne roky od vzniku Gregorianskeho kalendara od r. 1582 az po jeho koniec co je asi cca. v r. 4818 - ktoreho konca sa asi nedozijeme ale ked jedneho dna vykope tento vzorec nejaka vyssia rasa a bude to pre nich tak archaicke ako Win95 na 49. floppy disketach mozno mu daju sancu a zistia ktory rok dostanu v marci vacsiu vyplatu
 
 pre overenie tu je link:
 https://leap-years.calculators.ro/leap-years-list-from-1582-up-to-4818.php
 */

print()

var nahodnyRok = Int.random(in: 1582...4818)


if (nahodnyRok.isMultiple(of: 4) && !(nahodnyRok.isMultiple(of: 100)) || nahodnyRok.isMultiple(of: 400)) {
    print("Rok \(nahodnyRok) je prestupny")
} else { print("Rok \(nahodnyRok) nieje prestupny")
    
}
