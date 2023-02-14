import UIKit

//6th assignment
//1. Vytvor zátvorkový výraz, ktorý príjme kilometre a navráti prijatú hodnotu prekonvertovanú na míle.
//2. Zátvorka má prijať celé číslo a vrátiť true, ak sa jedná o prvočíslo alebo false, ak sa nejedná o prvočíslo.

//1. Napiste closure ktora prijme km a navrati tuto hodnotu v milach

//1.1 Napiseme closure ktora berie Int ako hodnotu km a pretaca ju na mile a kedze nasobime 0.621371 tak musime vracat Double
let Milovekilometre = { (hodnotaKM: Int) -> Double in
    var vysledok = Double(hodnotaKM) * 0.621371
    return vysledok
}
Milovekilometre(32)

//1.2 Refaktor#1 - tym ze mame iba jednu navratovu hodnotu return nemusime mat explicitne zadany a rovnako nepotrebujeme dalsiu premennu kedze sme si ju uz v Closure definovali
let MilovekilometreREF1 = { (hodnotaKM: Int) -> Double in
    Double(hodnotaKM) * 0.621371
}
MilovekilometreREF1(32)

//1.2 Refaktor#2 - hodnotu double mozme definovat rovno ako paramater a lubovolny argument uz len pretocime na Double aby to zbehlo
let MilovekilometreREF2 = { (hodnotaKM: Double) -> Double in hodnotaKM * 0.621371}
MilovekilometreREF2(Double(10))

//1.3 Refaktor#3 - mozme pouzit skratku na prvy argument pomocou $ a urobit to uplne pidi
let MilovekilometreREF3: (Double) -> Double = {$0 * 0.621371}
MilovekilometreREF3(Double(10))

//2. Napiste closure ktora prijme cele cislo a vrati true ak ide o prvocislo otherwise false. Najprv si definujeme co je prvocislo - prvocislo je cislo vacsie ako 1 ktore ma dva rozne delitele - seba a cislo 1 Vysledok je klasicky trial division ( alebo bruteforce ). Najprv pozerame ci je cislo vacsie ako 1 a zaroven v range 2 az cislo mensie ako n  - nie je delitelne tymito cislami. Metoda contains v tomto pripade nam pomaha pozerat podmienku { n % $0 == 0 }} kde $ je skratka na element ktory prave pozerame a pomocou operatora modulo pozerame zostatok. Ked je podmienka splnena v akomkolvek cisle tak uvedene cislo nieje prvocislo a ked je podmienka false tak cislo je prvocislo. Je to v podstate trivialny algoritmus ktory funguje na male cisla ale kedze je to bruteforce a pozerame kazdu hodnotu po jednom tak neni velmi efektivny na vacsie. Na overenie http://www.math.com/students/calculators/source/prime-number.htm.

let PrvocisloC = {(n: Int) -> Bool in n > 1 && !(2..<n).contains{ n % $0 == 0 }}
PrvocisloC(10345)




