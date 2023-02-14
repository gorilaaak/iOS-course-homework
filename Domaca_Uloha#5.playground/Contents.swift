import UIKit


//5th assignment

//1. V časti o priemereTestov nie je korektne spravený výsledok. Ak by Juraj mal z testov iné známky, výsledok by bol stále celé číslo. Ale priemer by mal vedieť byť aj desatiné číslo. Opravte výpočet tak, aby sa výsledok zobrazoval korektne, aj keď výjde desatiné číslo.
//
//2. Vytvorte funkciu, ktorá príjme celé číslo (v desiatkovej sústave) a navráti toto číslo v binárnej sústave.
//napr: binary(125)
//výstup: 1111101, či to bude pole ([1, 1, 1, 1, 1, 0, 1]), alebo string ("1111101") je úplne na vás.

//1. Upravit priemer testov
//uprimne som to spravil velmi lenivo a iba dosadil double vsade tam kde malo byt aby nam vysiel zelany vysledok

func priemerTestov(ziak: String, hodnotenie: [Double]) -> String {
    var vysledok = "\(ziak) ma z testov priemer: "
    var priemer: Double = 0
    
    for znamka in hodnotenie {
        priemer += znamka
    }
    
    priemer /= Double(hodnotenie.count)
    
    vysledok += String(priemer)
    vysledok += " bodov"
    
    return vysledok
}

let juraj = priemerTestov(ziak: "Juraj", hodnotenie: [60.44,40.56,90.67,94.55,67.56])
print(juraj)



//2. Binary konvertor
//Najpv som si tento kod napisal na papier - najjednoduchsie vysla moznost delenia dvomi a porovnanie vysledku ci vyjde ako parne alebo neparne cislo - ked vyjde neparne dame ako vysledok cislo 1 lebo nam akoze ostava 1 navyse, ak parne zapiseme nulu, delime az dokym nedosiahneme 0 kedze 1 / 2 je 0 aby sme sa predelili az uplne nakoniec. Kedze sa nam vysledky vracaju z lava doprava a binarne cisla citame z prava dolava ostava este otocit cely string opacne.


func Binarykonvertor(_ number: Int) -> String {
    var deleno = number
    var vysledok: String = ""

    while deleno != 0 {
        if deleno % 2 == 0 {
            vysledok += "0"
        } else {
            vysledok += "1"
        }

        deleno /= 2
    }

    let zobrazenye = String(vysledok.reversed())
    return zobrazenye
}

let podhodeneCislo = 125
let vysledok = Binarykonvertor(podhodeneCislo)

print("Cislo \(podhodeneCislo) je v binarnej sustave cislo: \(vysledok)")





