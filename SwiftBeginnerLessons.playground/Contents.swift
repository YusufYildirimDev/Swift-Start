import UIKit

// MARK: SABİT VE DEĞİŞKENLER

var greeting = "Hello, World"
let merhaba = "Merhaba, Hoşgeldiniz"

greeting = "Merhaba, playground"

let dog  = "Köpek"
let 🐝  = "Arı"
let π = 3.14

let heart = "\u{2764}"
let icon2 = "\u{062A}"
let icon3 = "\u{1f44d}"

var x : Int  = 2

let a : Double = 5

print(a)

let b: Int = Int(-3.9)

let version = 4
print("Swift \(version) versiyonunu kullanıyorum")

let y: Character = "y"

//Tek satır yorum yapmaya yarar

/*
 Birden fazla
 satırı
 yoruma alabilirsiniz
 */

var name: String?
name = nil
print(name ?? "Boş")
name = "Yusuf"
name?.count

for item in name! {
    print(item)
}

var versionn = 15
let myVersion = 5

if versionn > 13 {
    print("SwiftUI yazılabilir")
} else if versionn == 12  {
    print("1 sürüm arttırılmalı")
} else  {
    print("İphone kullandığına emin misin?")
}

// MARK: Ternary IF
versionn > 13 ? print("SwiftUII yazılabilir") : print("İphone kullandığına emin misin?")
//version == DEGER ? DOGRU ISE CALISACAK : YANLIS ISE CALISACAK

// MARK: Tuples
let tuples = (404, "Not Found")
print(tuples.0)
print(tuples.1)

// isimli tuples
var namesTuples = (first:1, middle: 2, last: 3)
namesTuples.first

//Sonradan değer belirleme
var numberTuples : (optionalFirst:Int?, midle: String, last:Int)?
numberTuples = (nil, "Yusuf", last: 3)
numberTuples?.last

//Soru : Merkezi (0,0) olan yarıçapı 1 olan bir çember tanımlayınız
// MARK: typealias: 
typealias Circle = (center: (x:CGFloat, y:CGFloat), radius: CGFloat)
let unitCircle: Circle = ((0.0,0.0),1)

var a1 = 3
var b1 = 4

(a1,b1) = (b1,a1)
print("a1: ",a1)
print("b1: ",b1)



// MARK: Array - Dizi

// Aynı veri türünde olan değerleri tutar, dilenirse farklı türlerde de tutulabilir.

var cars = ["Mercedes",3] as [Any]
var anotherCars = ["BMW":3]
cars.first
cars.last

var cities:[String] = [] //Boş String Arrray
var anotherCities:Array<String> = Array() //Boş String Array
var anotherCities2 = Array<String>() //Boş String Array
var anotherCities3 = [String]() //Boş String Array

//Array e eleman ekleme, ve indis kavramı

cities.append("Konya")
cities.append("Bursa")
cities.append("İstanbul")
cities.append("Adana")

cities.first
cities[0]
cities.endIndex
cities.last
cities[cities.endIndex - 1]
cities[cities.count - 1]
cities[3]

var stringArray = Array(repeating: "Kedi", count: 3)

// Array in Array ??

let matrix = [
    ["A","B",4],
    [1,2,3]
]

matrix[0][2]
matrix.first?.last

//Nümerik diziler

var numberArray = [1,2,3]

numberArray.max()
numberArray.min()

// MARK: Tuples in switch

let switchTuple = (firstCase: true, secondCase:false)

switch switchTuple {

case (true, true):
    print("İkiside doğru")
case (true, false):
    print("İlki doğru, İkinci yanlış")
case (false, true):
    print("İlki yanlış, ikinci doğru")
case (false, false):
    print("İkisi de yanlış")
}

//SET (Unordered) (Kümeler) -> Swift 5.4? Ordered Set kavramı geldi

// Set mükerrer eleman bulunmaz, Set Hashable protokolü?

var colors = Set<String>() // Elemanları String olan boş bir küme demek
var myColors: Set<String> = ["Siyah","Beyaz","Yeşil","Lacivert","Sarı","Kırmızı","Bordo","Mavi"]
myColors.count

var animals: Set<String> = ["Ateş","Pamuk","Kedi","Kuki","Bıyık","Zımbırtı","Kartal","Doğan"]
var myCars: Set<String> = ["Kartal","Doğan","Audi","Cadillac", "Bmw"]
var anotherCars2: Set<String> = ["Anadol","Kartal"]

//Kesişim (Intersection)
let intersection1 = animals.intersection(myCars)
let intersection2 = myCars.intersection(anotherCars2)

//Birleşim (union)
let union1 = myCars.union(anotherCars2)
let mySet: Set<String> = ["Ali","Ali","Ahmet"]

var hayvanlar3: Dictionary<String,String> = Dictionary<String,String>() //Boş bir dictionary
var hayvanlar1 = [String:String]() //Boş Dictionary
var hayvanlar2: [String:String] = [:] //Boş Dictionary

var hayvanlar : [String:String] = ["Ateş":"Kedi","Dogi":"Köpek", "vırvır": "Muhabbet Kuşu"]
hayvanlar["Ateş"]

for hayvan in hayvanlar.keys {
    print(hayvan)
}

for hayvan in hayvanlar.values {
    print(hayvan)
}

hayvanlar.updateValue("Jaguar", forKey: "Ateş")
hayvanlar

var plate: [Int:String] = [34:"İstanbul", 16:"Bursa", 06:"Ankara",42:"Konya",49:"Muş",48:"Muğla"]
var otherDictionary = [String:Any]()

//Fonksiyonlar

func sayHi() {
    print("Merhaba")
}

sayHi()

//NUM1
func sayHiTo(name: String) {
    print("Merhaba \(name)")
}

sayHiTo(name: "Yusuf")

//NUM2
func greeting(name:String) -> String {
    return "Merhaba \(name)"
}

greeting(name: "Ahmet")

//HW: NUM1 vs NUM2 tarafını seç neden?

func greeting(name:String, age:Int) -> String {
    return "Merhaba ben \(name), \(age) yaşındayım"
}

greeting(name: "Yusuf", age: 27)


func anything() -> (a:Int, b:Int,c:Int) {
    return (1,2,3)
}

//Variadic function
func sumVariadicFunction(numbers:Int ... , y:String) {
    print("\(y): \(numbers)")
}

sumVariadicFunction(numbers: 1,2,3,4,5,6,7,8,9,10, y: "Sayılarımız")

func value(x: inout Int) {
    x = 5
    x = x + 1
    print(x)
}
var L = 4
value(x: &L)

//*********************************
/**
        CLOSURES - Block - Lambda - Arrow function
 -             İsmi olmayan, parametre alıp, geriye değer döndürebilen, bir değişkene atanabilen, bir fonksiyona parametre olarak verilebilen
 kod bloğuna denir.
 */
//**********************************

// () -> () // () -> Void
let selamVer: () -> () = {
    print("Merhaba SelamVer")
}

selamVer

//İsim parametresi alan bir closure
let selamVer2: (String) -> () = { name in
    print("Merhaba \(name)")
}

selamVer2("Yusuf")

//Birden fazla parametre alan ve dönüş tipi olan bir closure

let compare: (Int, Int) -> Bool = { (x,y) in
    return x < y
}

compare(30,5)
compare(5,7)

//(Int,Int) tipinde parametre alıp geriye (Int) dönen bir closure yazınız
let sum: (Int,Int) -> Int = { (x,y) in
    return x + y
}

sum(3,5)

let names = ["Mert", "Barış","Zehra","Zeynep","Samet","Yusuf"]

let sortedNames = names.sorted { (x: String, y:String) -> Bool in
    return x < y
}

sortedNames

let sortedNames2 = names.sorted { (x,y) -> Bool in
    return x < y
}

sortedNames2

let sortedNames3 = names.sorted { (x,y) in
    return x < y
}

sortedNames3

let sortedNames4 = names.sorted {
    $0 < $1
}

sortedNames4

let sortedNames5 = names.sorted(by: <) // Tercihim budur
sortedNames5

//Bir fonksiyona parametre olarak verilmesi

func myFunction(myClosure: () -> Void) {
    print("My function started...")
    myClosure()
    print("My function end...")
}

let exampleClosure = {
    print("myClosure run...")
}

myFunction(myClosure: exampleClosure)

//Return tipinde  closure kullanımı
func buy() -> (String)-> Void {
    return {
        print("\($0) satın aldım")
    }
}

func sell(price: Int) -> (Int) -> Void {
    return {
        print("\($0 - price)")
    }
}

let result = buy()
result("Zeytin")

let sellResult = sell(price: 15)
sellResult(3)

//Completion Handler
/**
 Muhtemelen en fazla kullanacağınız closure türüdür
 HTTP isteği gibi uzun bir işlem yapmak istediğimizi varsayalım.
 İsteğin tamamlanmasından hemen sonra bir şeyler yapmak isteyelim
 Ancak, sürecin devam edip etmediğini birden çok kez kontrol etmek sizin için maliyetli olacaktır
 Bu durumda completion handler işimizi çözecektir
 completion handler uzun işlem tamamlanır tamamlanmaz geri çağrılan bir closure dır.
 */

let handler: (Data?, URLResponse?, Error?) -> () = { (data, response, error) in
    //print(String(data: data!, encoding: .utf8)!)
}

let url = "https://yusufyildirim.com"
let myURL = URL(string: url)

/*let task = URLSession.shared.dataTask(with: myURL!) { (data, response, error) in
    print(String(data: data!, encoding: .utf8)!)
}
task.resume()
*/

let task = URLSession.shared.dataTask(with: myURL!, completionHandler: handler)
task.resume()

//non -escaping vs @escaping
/**
 - non-escaping: closures sadece kendi bloğunda çalışabilir, blok dışında çalışmaz
 non-escaping kullanıyorsanız compiler bu closureın kod bloğu dışında çalıştırılmak istemediğini bilir
 
 - escaping: non-escaping in tersi şeklindedir. Başka yerde çağırmak istediğimiz zaman @escaping kullanırız. Swift te siz non-escaping yazmasanızda defult olarak tanımlıdır. Ancak başka yerde sonucunu kullanmak istiyorsanız @escaping yazmalısınız.,
 */
/***
 Enums
 ->
 */
enum Direction {
    case right
    case left
    case top
    case bottom
}

//tek case altında toplama
enum Direction2 {
    case right,left,top,bottom
}

//Kullanım Örnekleri
let lefSide = Direction.left
let rightSide = Direction.right
let downSide: Direction = .bottom

enum Numbers: Int {
    case first = 1, second, third, fourth, fifth
}

let besinci = Numbers.fifth

print(besinci.rawValue)

enum Hata: Error {
    case sunucuHatasi(sebep:String)
    case kullaniciHatasi(sebep:String)
}

let hata = Hata.kullaniciHatasi(sebep: "Kullanıcı hatası meydana geldi")
print(hata)

enum Cities: String {
    case İzmir = "Boyoz"
    case Hatay = "Künefe"
    case Zonguldak = "Kestane Balı"
    case Bursa = "İskender"
    case Maraş = "Dondurma"
    case Adana = "Bici bici"
    case Samsun = "Pide"
}

let city = Cities.Adana
print(city.rawValue)

//Bir fonksiyona parametre olarak enum verme
func move(direction: Direction) {
    print("Oyuncu \(direction) yönüne hareket etti")
}

move(direction: .right)

let direct : Direction = .right

switch direct {
    
case .right:
    print("right")
case .left:
    print("left")
case .top:
    print("top")
case .bottom:
    print("bottom")
}

//Nested -> İç içe enum kullanımı

enum Orchestra {
    
    enum Strings {
        case guitar
        case baglama
    }
    
    enum Percussion {
        case drum
        case bell
    }
    
    enum Keyboards {
        case piano
        case org
    }
    
}

let inst1 = Orchestra.Keyboards.piano
let inst2 = Orchestra.Percussion.drum
let inst3 = Orchestra.Strings.guitar

let solist = "Yusuf"


//MARK: Optionals
// BACKEND e ASLA GÜVENME, Değişkenleri optional tanımla
var number: Int?
number = 5
print(number ?? 0)

//if -let kullanımı
if let sayi = number {
    print("number: \(sayi)")
} else {
    print("number was not assigned a value")
}

var sehir:String?
sehir = "Ankara"
print(sehir ?? "Şehir tanımlaması yapılmamış")
print(sehir!)
print(sehir as Any)


if let il = sehir {
    print("sehir: \(il)")
} else {
    print("sehir tanımlanmamış")
}

struct Member {
    var name: String?
    var email: String?
    var password: String?
}

var member = Member(name: "Yusuf", email: "yusufyldrm1625@gmail.com", password: nil)

func getMember(member: Member) {
    if let name = member.name, let email = member.email, let password = member.password {
        print(name)
        print(email)
        print(password)
    } else {
        print("Veriler okunamadı")
    }
}

getMember(member: member)

// guard let .... else {}
func uyeGetir(uye: Member) {
    guard let name = uye.name, let email = uye.email, let password = uye.password else {
        print("Veriler okunamadı")
        return
    }
    
    print(name)
    print(email)
    print(password)
}

let uye = Member(name: "Ahmet", email: "ahmetylrm1963@gmail.com", password: nil)

uyeGetir(uye: uye)


enum NameError: Error {
    case tooLong
    case tooShort
}

func nameValidation(name: String) throws -> String {
    if name.count > 8 {
        throw NameError.tooLong
    } else if name.count < 2 {
        throw NameError.tooShort
    } else {
        return name
    }
}

// try: Hata varsa ben onu yakalarım, Do - try - catch yapısını severim

do {
    _ = try nameValidation(name: "Yusuf Muhammet YILDIRIM")
} catch NameError.tooLong {
    print("name is very long")
} catch NameError.tooShort {
    print("name is very short")
}

//try?: Hata herkes yapabilir, Do catch kullanılmasına ihtiyacım YOK
if let isim = try? nameValidation(name: "Yusuf") {
    print("Name is valid: \(isim)")
} else {
    print("Name is non valid")
}


//try!: Ben hataları hiç sevmem hata yakalarsam bozulurum :)
//do or die yaklaşımıyla hata yakalar


let result2 = try! nameValidation(name: "Yusuf")

//Hesap Makinası Similasyonu

var screen = "0.0"

enum CalculateError: Error {
    case nanError // 0 bölü 0 hatası
    case InfError // 0 a bölme hatası
    case baseCase // Bölünen 0 ise
}

func bolme(bolunen:Double, bolen:Double) throws -> Double {
    guard bolunen != 0 || bolen != 0 else {
        print("Nana hatası meydana geldi")
        throw CalculateError.nanError
    }
    
    guard bolunen != 0 else {
        print("Base case durumu")
        throw CalculateError.baseCase
    }
    
    guard bolen != 0 else {
        print("Inf error")
        throw CalculateError.InfError
    }
    
    return bolunen / bolen
}

do {
    try bolme(bolunen: 3, bolen: 0)
} catch CalculateError.baseCase {
    screen = "0.0"
} catch CalculateError.InfError {
    screen = "Inf Error"
} catch CalculateError.nanError {
    screen = "Nan"
}

