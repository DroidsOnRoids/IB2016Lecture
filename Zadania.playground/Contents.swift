//: ### Cześć! Zanim zaczniesz chcielibysmy pokazać Ci kilka rzeczy w Swiftcie.

//: ### Przykładowe deklaracje zmiennych
//: wartość tekstowa (String)
"tekst"

//: wartość liczbowa (niezmiennoprzecinkowa, Int)
10

//: wartość liczbowa (zmiennoprzecinkowa, Double)
10.5

//: tablica zmiennych (tutaj array stringów, Array<String>)
["A", "B"]

//: słownik, gdzie kluczem jest String, a wartością Double (tutaj Dictionary<String, Double>)
["a": 5.0, "b": 8.4]

//: ### Zmienne
//: deklaracja zmiennej o wartości liczbowej 5
var a = 5
//: deklaracja zmiennej o wartości tekstowej
var b = "Dzień dobry"

//: Swift posiada silne typowanie, więc zmienna b nie będzie mogła nigdy przechowywać wartości innego typu niż String
//: b = 365 nie wchodzi więc w grę. Możemy jednak zmienić wartość powyższej zmiennej na inny tekst:
b = "Guten Tag"

//: Możemy też dokonywać działań arytmetycznych:
a = a * 3

//: Lub w skrócony sposób:
a *= 3

//: deklaracja stałej
let c = "Cześć"

//: Czas na zadania.
//: W razie problemów możesz posiłkować się dokumentacją Apple:
//: [dokumentacja tutaj](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1)
//: W internecie znajdziesz też mnóstwo innych źródeł, m.in. te o których wspominaliśmy na wykładzie.
//: Ray Wenderlich: [link](https://www.raywenderlich.com/category/swift)
//: We Heart Swift: [link](https://www.weheartswift.com)
//: Nasz firmowy blog :) [link]:(http://www.thedroidsonroids.com/category/blog/ios/)
//: W razie potrzeb służymy też pomocą na mailu piotr.sochalewski@droidsonroids.pl i pawel.bednorz@droidsonroids.pl


//: ### ZADANIE 1. Zadeklaruj zmienną "liczba" o wartości 6.5.


//: ### ZADANIE 2. Zmień wartość zmiennej "liczba" na 10.0.


//: ### ZADANIE 3. Zadeklaruj stałą "mnożnik" o wartości 1.5.


//: ### ZADANIE 4. Zmień wartość zmiennej "liczba" mnożąc ją przez "mnożnik".


//: ### ZADANIE 5. Zadeklaruj zmienną o nazwie "tablica" będącą tablicą z wartościami zmiennych "liczba" i "mnożnik".


//: ### ZADANIE 6. Wydrukuj wartość zmiennej "tablica".
//: ### Podpowiedź: skorzystaj z funkcji print().


//: ### ZADANIE 7. Wydrukuj liczbę elementów zmiennej "tablica".


//: ### ZADANIE 8. Wydrukuj wartość drugiego elementu "tablica".
//: ### Podpowiedź: elementy w tablicach numerowane są począwszy od 0.
//: ### Użyj operatora [Int], np. array[6] zwróci siódmy element.


//: ### ZADANIE 9. Zadeklaruj stałą "warsztaty" o wartości "Droids On Roids".


//: ### ZADANIE 10. Wydrukuj liczbę znaków stałej "warsztaty".


//: ### ZADANIE 11*. Wydrukuj pierwszy, ósmy i jedenasty znak zmiennej warsztaty.
//: Podpowiedź: Wartości tekstowe możesz łączyć w następujący sposób: "\(zmienna1)\(zmienna2)".
//: Wybrany znak z typu tekstowego możesz pobrać tworząc z niego tablicę znaków (poprzez Array(warsztaty.characters)).
//: Wykorzystaj podpowiedź z zadania 7. Powinieneś otrzymać "DOR" i znak nowej linii.


//: ### ZADANIE 12. Korzystając ze składni if warunek { zrób coś } else { zrób coś innego }
//: wydrukuj "a jest większe lub równe 45" lub "a jest mniejsze od 45" zależnie od wartości a.
//: Podpowiedź: Przykład zastosowania poniżej.
if c == "Cześć" {
    print("Witam Cię serdecznie")
} else {
    print("Nie wiem co powiedzieć :(")
}



//: ### ZADANIE 13. Dodaj do wcześniej zadeklarowanej zmiennej "tablica" dowolną wartość liczbową zmiennoprzecinkową.
//: Podpowiedź: Wykorzystaj funkcję append() operując na zmiennej "tablica".


//: ### ZADANIE 14. Posortuj wartości w zmiennej "tablica" rosnąco wykorzystując funkcję sort().
//: Podpowiedź: Zwróć uwagę, że sort() zwraca posortowany obiekt, a nie modyfikuje jego oryginalną zawartość.


//: ### ZADANIE 15. Posortuj wartości w zmiennej "tablica" malejąco.
//: Podpowiedź: Ponownie wykorzystaj funkcję sort() tym razem z parametrem: sort(>)


//: ### ZADANIE 16. Stwórz funkcję zwracającą sumę dwóch wartości liczbowych niezmiennoprzecinkowych.
//: Podpowiedź: Wykorzystaj przykład funkcji zwracającej różnicę tych liczb.
func subtract(a: Int, _ b: Int) -> Int {
    return a - b
}



//: ### ZADANIE 17. Stwórz funkcję zamieniającą wartości dwóch liczb
//: Podpowiedź: wykorzystaj tymczasową zmienną w ciele funkcji.
//: Nagłówek funkcji przygotowaliśmy dla Ciebie. Zwróć uwagę na słowo kluczowe inout, które pozwala modyfikować wartości otrzymanych parametrów.
func swapTwoInts(inout a: Int, inout _ b: Int) { }



//: ### ZADANIE 18. Przetestuj działanie stworzonej przez Ciebie funkcji z zad. 16. lub 17. z następującymi parami liczb.
var para1a = 10, para1b = 3
var para2a = 3.0, para2b = 2.5



//: ### ZADANIE 19*. Liczby z drugiej pary są zmiennoprzecinkowe, więc nie mogą być przyjęte jako parametry typu Int.
//: Stwórz funkcję pozwalająca na zamienianie dwóch dowolonych zmiennych, która na to pozwoli.
//: Podpowiedź: Wykorzystaj przykład funkcji z generycznymi parametrami.
func doSomething<T>(inout a: T, inout _ b: T) { }



//: ### ZADANIE 20*. Liczby z drugiej pary są zmiennoprzecinkowe, więc nie mogą być przyjęte jako parametry typu Int.
//: Stwórz funkcję z generycznymi parametrami, która na to pozwoli.
//: Podpowiedź: Wykorzystaj przykład funkcji z generycznymi parametrami.
//: Podpowiedź: Żeby tego dokonać należy stworzyć własny protokół (ponieważ nie istnieje wspólny protokół zaadaptopwany
//: zarówno przez typy zmienno-, jak i niezmiennoprzecinkowe pozwalający na wykonywanie podstawowych operacji matematycznych).
//: W przykładzie zaimplementowano protokół, z którego możesz skorzystać.
//: Więcej o tzw. "generykach" możesz przeczytać tutaj: [generyki](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html)

protocol NumericType {
    func +(lhs: Self, rhs: Self) -> Self
    func -(lhs: Self, rhs: Self) -> Self
}

extension Double : NumericType {}
extension Float  : NumericType {}
extension Int    : NumericType {}
extension Int8   : NumericType {}
extension Int16  : NumericType {}
extension Int32  : NumericType {}
extension Int64  : NumericType {}
extension UInt   : NumericType {}
extension UInt8  : NumericType {}
extension UInt16 : NumericType {}
extension UInt32 : NumericType {}
extension UInt64 : NumericType {}

func genericSubtract<T where T: NumericType>(a: T, _ b: T) -> T {
    return a - b
}


