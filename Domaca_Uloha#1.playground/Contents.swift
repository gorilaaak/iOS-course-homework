import UIKit

//Assignment#1

//1. Spojte nasledovné stringy dokopy
//auto / servis
//ľadový / čaj
//poly / styrén


//2. Automatizuj vzorec na výpočet obvodu obdĺžnika


//3. Automatizuj vzorec na výpočet objemu kocky


//4. Chopok je na slovensku najveternejšie miesto. Priemerná ročná rýchlosť vetra je 10 m/s.Aká je priemerná rýchlosť vetra v jednotkách km/h a ktas?Programovanie je kažodenné riešenie problémov. Koľko ktas je 1km/h?

//5. 29.11.1965 bola najvyššia nameraná rýchlosť vetra na slovensku na Skalnatom Plese. Vietor dosahoval rýchlosť 283 km/h.Chcem vedieť aká rýchlosť to je v m/s a ktas.




//1. Spajanie stringov
let priPona = "servis"
let predPona = "auto"
let autoservis = "\(predPona)\(priPona)"
print(autoservis)

print ("ladovy" + "caj")

var umelina = "poly"
umelina += "styren"
print (umelina)


//2.Obvod obdlznika
let strana_a = 10
let strana_b = 5
let obvodOblzdnika = 2 * (strana_a + strana_b)
print()
print("Obvod obdlznika sa rovna \(obvodOblzdnika)cm ak strana a je \(strana_a)cm a strana b je \(strana_b)cm.")

//3.Objem kocky
let jedenParameter_x = 5.0
let objemKocky = pow(jedenParameter_x, 3)
print()
print ("Objem kocky je \(Int(objemKocky)) cm stvorcovych ak pozname jeden parameter a tym je x \(Int(jedenParameter_x))cm")


//4.Chopok
let ktas_mS = 0.514 // prevod 1kt na 1m/s
let ktas_KmH = 1.852 // prevod 1kt na 1km/h
let chopok_ms = 10.0
let chopok_kmh = chopok_ms * 3.6 // 3.6 = 60 sekund x 60 minut a mame metre za hodinu a iba premenine m za km teda / 1000

print()
print ("""
Chopok je na Slovensku najveternejšie miesto. Priemerná ročná rýchlosť vetra je \(Int(chopok_ms)) m/s.
To je az \(Int(chopok_kmh)) km/h a \(chopok_kmh / ktas_KmH) ktas.
Jednotka ktas je jednotka rychlosti pouzivana v moreplavbe znama ako namorny uzol alebo iba uzol, 1km/h je \(ktas_KmH) ktas.
""")

//5.Skalnate Pleso
let rychlostPleso_kmh = 283
let rychlostPleso_ms = 283 / 3.6
let rychlostPleso_ktas = Double(rychlostPleso_kmh) / ktas_KmH

print()
print ("""
29.11.1965 bola najvyššia nameraná rýchlosť vetra na Slovensku na Skalnatom Plese. Vietor dosahoval rýchlosť \(rychlostPleso_kmh) km/h.
To je \(rychlostPleso_ms) m/s a \(rychlostPleso_ktas) ktas.
""")
