import UIKit

//1. let - константа которую нельзя изменить, var - переменная которую можно изменить

//2. Да
var name1 = "Nikita", name2 = "Anton", name3 = "Maria"
print("Nikita: \(name1) Anton: \(name2) Maria: \(name3)")

//3. // 1. let a = 7 - Int
     // 2. let b = 7.0 - Double
     // 3. let c = "7" - String
     // 4. let d = UInt8.max - UInt8
     // 5. let e =  1_000_000 - Int

//4.  let number: Int = Int.max + 1 - Ошибка Arithmetic operation '9223372036854775807 + 1' (on type 'Int') results in an overflow

//5.
let test1 = ("Mary", 9001)
let test2 = (name: "Andry", score: 340)
let (houses, districts) = (numberHouse:21, nameDistrict:"Manhattan")

//6.
let age = 25
let name = "Nikita"
let greeting = "Hello \(name), your age is \(age)"

//7.
//1. let a = 21 / 8 = 2
//2. let b = 21 % 8 = 5
//3. let c = a == b = False
//4. let d = a != b = True
//5. let e = c && d = False
//6. let f = c || d = True
