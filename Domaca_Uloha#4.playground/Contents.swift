import UIKit

//4th assignment

//1. Spravte losovanie v EuroJackpote 6 žrebovaní, výstup by mal vyzerať nasledovne:
//x = 1 až 50, y = 1 až 10
//[x, x, x, x, x] [y, y] (6x pod sebou)
//2. vypíšte prvých 15 čísel z fibonacciho postupnosti

//1. Eurojackpot


//1.1 Moje prvne vlastne riesenie ( bez Googlu ) - v skratke inicioval som prazdne arraye, nastavil pocet losov, spustil while loopu s podmienkou na pocet losov, vnutri loopy si deklarujem dve premenne ktore sypu nahodne cisla do deklarovanych poli, po kazdej iteracii vypise polia podla zadania a vymaze ich aby sa neopakovali a odcita jeden los. Prave som si uvedomil ze som napisal kod ktory je analogia skrabania si ucha cez rit s trickom s dl. rukavom a oblecenou zimnou bundou.

print("Eurojackpot#1")

var arrayofX    = [Int]()
var arrayofY    = [Int]()
var pocetLosov  = 6

while pocetLosov != 0 {

    for _ in 0...4 {
        let randomIntX = Int.random(in: 1...50)
        arrayofX.append(randomIntX)
        let randomIntY = Int.random(in: 1...10)
        arrayofY.append(randomIntY)
    }
    print(arrayofX,arrayofY.suffix(2))
    arrayofY.removeAll()
    arrayofX.removeAll()
    pocetLosov -= 1
}



print()
print("Eurojackpot#2")
//1.2 Toto uz vyzera lepsie - mame danu kapacitu poli a zaroven range v dvoch riadkoch, staci spustit while loopu a sledovat ako sme aj po 10. rokoch v Eurojackpote vyhrali holu <>. metoda .map vracia pole spolu s pouzitim closure aby nam vratila pole s 5. a 2. indexami v ktorych budu nahodne cisla od 1 do 50 a od 1 do 10 https://stackoverflow.com/questions/27809897/shortest-code-to-create-an-array-of-random-numbers-in-swift

pocetLosov += 6

while pocetLosov != 0 {
    var arr_X = (1...5).map( {_ in Int.random(in: 1...50)} )
    var arr_Y = (1...2).map( {_ in Int.random(in: 1...10)} )
    print(arr_X,arr_Y)
    pocetLosov -= 1
}

print()
print("Nejaky Talian ktory vykradol indicku postupnost este z pred Krista, Lorda")

//2. Fibonacci - fibonacciho postupnost je kde dalsie cislo ziskame scitanim dvoch predoslych. V nasom pripade mame vypisat prvych 15 cisiel tejto postupnosti, vacsinou zacina od cisiel 0,1. Fibo postupnost zvykne byt zlaty standard otazok na pohovore preto som moje riesenie vysvetlil uplne do detailu ako pre dojca aby bolo jasne ze to co som napisal aj ovladam. Inak prvotne som toto programoval na papier s perom a kreslil si co to robi a ako to funguje.

var sequence     = [0, 1] // Definuejem start fibonacciho postupnosti
var velkostPola  = 15 // zadana dlzka postupnosti

while sequence.count != velkostPola { // zaciname iteraciu dokym neni splnena nasa podmienka v tomto pripade dlzka postupnosti
    if velkostPola <= 2{
        break // nestujeme if statement ktory nas vyhodi z loopy ked je zelana velkost nizsia alebo rovna 2 ( kedze 2 cisla uz pozname )
    }
    let first = sequence[sequence.count - 2] // definujeme si prvu konstantu ktora ma hodnotu indexu ktory ziskame odcitanmim countu (2) a cisla 2 teda 2 - 2 je 0 a na indexe 0 mame cislo 0.
    let second = sequence.last! // definujeme druhu kontantu ktora vytiahne poslednu hodnotu pola v tomto pripade 1
    sequence.append(first + second) // nasledne scitame dve hodnoty a pridame ich na koniec pola, v tomto pripade 0 + 1 = 1 ide na koniec pola - pokracovanie tu ->
}

if sequence.count <= 2 {
    print("Velkost pola musi byt viac ako 2") // koncovy if statement ktory nas odkazuje na to ze sme zadali prilis malu hodnotu dlzky pola postupnosti
} else {
    print(sequence) // vypisuje zelane pole Fibo postupnosti
    
}

// -> aktualny stav pola sequence je [0,1,1], znova pozerame podmienku vo while loope a kedze count = 3 pokracujeme:
// premenna first znova zistuje index a to tym ze odratame cislo 2 od countu (3) a ziskame 1 - tym padom sme sa posunuli o jedno policko od prvej iteracie a dostavame cislo 1 kedze sequence[1] = 1
// premenna second pozera posledny index v poli v nasom pripade 1 kedze aktualne pole je [0,1,1]
// nakoniec scitame index 1 a posledny index, v nasom pripade 1 + 1 a dostavame cislo 2 ktore zapisujeme na koniec pola -> [0,1,1,2]
