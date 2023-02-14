import UIKit

//2nd assignment


//1. Zoraď čísla od najmenšieho po najväčšie.
//
//let arr = [0, 34, -14, -43, -1, 38, -8, 26, 44, 43, 33, 50, -45, 2, -13, -38, -6, -50, -46, 49, -39, 21, 19, 10, 42, -40]


//2.1 Zisti, či sa "duic" nachádza v Array
//2.2 Aký index má slovo "eros"


//let arrSlova = ["tempus", "nulla", "cras", "orci", "vel", "non", "commodo", "imperdiet", "enim", "eu", "varius", "amet", "tempus", "id", "quam", "vulputate", "nunc", "morbi", "lectus", "fringilla", "elit", "augue", "eros", "sagittis", "dolor", "donec", "ultrices", "mattis", "ultricies", "elit", "fringilla", "augue", "quis", "sagittis", "ipsum", "accumsan", "mauris", "tincidunt", "malesuada", "venenatis", "felis", "leo", "nec", "non", "hendrerit", "auctor", "efficitur", "laoreet", "id", "quisque", "vitae", "libero", "morbi", "felis", "eu", "condimentum", "ut", "magna", "quis", "arcu", "ex", "mi", "duis", "pulvinar", "vitae", "suscipit", "tempus", "non", "bibendum", "nullam", "volutpat", "aliquam", "vivamus", "sed", "quam", "velit", "ultricies", "ut", "auctor", "magna", "ligula", "nec", "nisi", "rutrum", "sem", "sed", "a", "interdum", "fringilla", "viverra", "ullamcorper", "nibh", "maecenas", "pulvinar", "vestibulum", "odio", "sit", "vel", "metus", "fusce"]


//3.1 Nájdi zhodný prvok, ktorý majú obe polia identický
//3.2 Ak sa prvok nachádza viackrát v poliach, zobraz ho iba raz.

//let prv1 = [321, 270, 229, 161, 378, 148, 316, 152, 180, 108, 188, 225, 333, 358, 189, 112, 196, 373, 252, 385, 239, 363, 171, 191, 155, 338, 117, 255, 388, 259, 272, 355, 266, 203, 220, 118, 124, 209, 170, 219, 136, 274, 357, 317, 256, 320, 356, 397, 315, 176, 305, 182, 347, 336, 185, 172, 398, 121, 318, 212, 127, 132, 122]
//let prv2 = [311, 159, 138, 461, 389, 226, 158, 370, 130, 465, 221, 376, 485, 169, 246, 224, 222, 450, 430, 113, 364, 245, 398, 282, 314, 116, 324, 446, 371, 156, 428, 175, 125, 346, 360, 162, 238, 395, 412, 354, 285, 232, 143, 140, 269, 303, 443, 133, 243, 210, 448, 381, 417, 301, 258, 268, 200, 195, 394, 483, 260, 141, 383]



//1.
//Definujeme si array podla zadania
let arr = [0, 34, -14, -43, -1, 38, -8, 26, 44, 43, 33, 50, -45, 2, -13, -38, -6, -50, -46, 49, -39, 21, 19, 10, 42, -40]

//Zoradime array pomocou funkcie sort(). Tot vsio.
print("Sortnuty array arr: \(arr.sorted())")
print()


//2
//Definujeme si array podla zadania
var arrSlova = ["tempus", "nulla", "cras", "orci", "vel", "non", "commodo", "imperdiet", "enim", "eu", "varius", "amet", "tempus", "id", "quam", "vulputate", "nunc", "morbi", "lectus", "fringilla", "elit", "augue", "eros", "sagittis", "dolor", "donec", "ultrices", "mattis", "ultricies", "elit", "fringilla", "augue", "quis", "sagittis", "ipsum", "accumsan", "mauris", "tincidunt", "malesuada", "venenatis", "felis", "leo", "nec", "non", "hendrerit", "auctor", "efficitur", "laoreet", "id", "quisque", "vitae", "libero", "morbi", "felis", "eu", "condimentum", "ut", "magna", "quis", "arcu", "ex", "mi", "duis", "pulvinar", "vitae", "suscipit", "tempus", "non", "bibendum", "nullam", "volutpat", "aliquam", "vivamus", "sed", "quam", "velit", "ultricies", "ut", "auctor", "magna", "ligula", "nec", "nisi", "rutrum", "sem", "sed", "a", "interdum", "fringilla", "viverra", "ullamcorper", "nibh", "maecenas", "pulvinar", "vestibulum", "odio", "sit", "vel", "metus", "fusce",]

//Definujeme si premenne ( skor konstanty ) podla zadania aby sme ich mohli pouzivat globalne.
let prveSlovo = "duic"
let druheSlovo = "eros"


//Najprv si vytiahneme boolean hodnotu do konstanty pomocou funkcie .contains(), potom urobime jednoduchy if statement kde porovnavame hodnotu a ta nam vypluje zelany vysledok. Nachystal som aj .append funkciu na cross check else statementu.

//2.1
//arrSlova.append(prveSlovo)
var bytCinebyt = arrSlova.contains(prveSlovo)
if  bytCinebyt == false {
    print ("Hladany vyraz \(prveSlovo) sa v nasom array nenachadza.")
} else {
    print ("\(prveSlovo.uppercased()) nas dosiel vyduric")
}



print()

//2.2
//Najprv zistime ci sa slovo eros vobec nachadza v nasom array pomocou if statementu, pridal som aj toggle funkciu na cross check - zmenil som  konstantu na premennu aby sa dala pouzit.
var bytEros_alebo_nebyt = arrSlova.contains(druheSlovo)
//bytEros_alebo_nebyt.toggle()
if bytEros_alebo_nebyt {
    print("Slovo \(druheSlovo) sa nachadza v nasom array")
} else {
    print("Instruktor je potmehut")
}
print()

//Jednoduchy check indexu ale kedze funkcia indexof vracia optional, unwrapol som ju pomocou bang operatora (!) na dva sposoby, neni to best practice a mozeme ju pouzivat v pripadoch ked vieme ze tam tam hodnota urcite je ( v tomto pripade vieme ) pri velkych projektoch na vlastne riziko.

let Index = arrSlova.index(of: druheSlovo)
print("Index erosu je \(Index)")

let unwrappedIndex = Index!
print("Index erosu je \(unwrappedIndex)")
print("Index erosu je \(Index!)")
print()

//Unwrapping optionals sa po spravnosti robi s if let alebo guard let.
//Nizsie ukazka if let.

if let Index = arrSlova.firstIndex(of: druheSlovo) {
   print("Index \(druheSlovo)u je \(Index).")
} else {
   print("\(druheSlovo) is not in the list")
}


print()

//3
// Definujeme si polia ako v nam hovori zadanie
let prv1 = [321, 270, 229, 161, 378, 148, 316, 152, 180, 108, 188, 225, 333, 358, 189, 112, 196, 373, 252, 385, 239, 363, 171, 191, 155, 338, 117, 255, 388, 259, 272, 355, 266, 203, 220, 118, 124, 209, 170, 219, 136, 274, 357, 317, 256, 320, 356, 397, 315, 176, 305, 182, 347, 336, 185, 172, 398, 121, 318, 212, 127, 132, 122]
var prv2 = [311, 159, 138, 461, 389, 226, 158, 370, 130, 465, 221, 376, 485, 169, 246, 224, 222, 450, 430, 113, 364, 245, 398, 282, 314, 116, 324, 446, 371, 156, 428, 175, 125, 346, 360, 162, 238, 395, 412, 354, 285, 232, 143, 140, 269, 303, 443, 133, 243, 210, 448, 381, 417, 301, 258, 268, 200, 195, 394, 483, 260, 141, 383]

//3.1
// Aby sme mohli najst intersection (prienik) v dvoch poliach musime ich prekotit na sety, kedze intersection metoda vytvara novy set a ten sa neda indexovat lebo je to nahodny collection (resp. da sa vsetko kludne sa poucim - pri kodeni nikdy nehovor nikdy), musime ho znova prekotit na pole a vytiahnut hodnotu aby sme neprintovali cely set s [].
let setPrvy = Set(prv1)
let setDruhy = Set(prv2)
let setIntersection  = Array(setPrvy.intersection(setDruhy))[0]

print("Priesahova hodnota z oboch arrayov (prv 1 a prv 2) je \(setIntersection).")

print()

//3.2
//Obe polia som spojil do jedneho setu a kedze set nema duplikaty, urobil som pre istotu aj count na poliach aj setoch, spojil ich do logickeho and-u a nechal vypisat. Rovnako som nechal append na test a zmenil prv2 z let na var aby bola mutable

let setTreti = Set(prv1 + prv2)
//prv2.append(383)
if prv1.count == setPrvy.count && prv2.count == setDruhy.count {
    print("""
          Nizsie su hodnoty ktore sa v obidvoch poliach nachadzaju iba raz:
          \(setTreti)
          """)
} else {
    print("Nieco je zle !!!")
}

