import UIKit

// 1. Напишите все возможные варианты кода, в которых по-разному создается Int массив
var array1 = [Int]()
var array2 = [1, 2, 3]
var array3: [Int] = [1, 2, 3]

// 3. Напишите код, который:
      // 1. создаст массив из трех Int элементов
      // 2. добавит в этот массив еще один элемент
      // 3. удалит первый элемент
      // 4. с помощью цикла найдет минимальное и максимальное число
      // 5. выведет в консоль (функция print) разницу между найденным максимальным и минимальным числом
var array = [1, 2, 3]
array.append(4)
array.remove(at: 0)
var max: Int = Int.min
for el in array {
    if (el > max){
        max = el
    }
}
var min: Int = Int.max
for el in array {
    if (el < min){
        min = el
    }
}
print(max - min)

//4. Напишите все возможные варианты кода, в которых по-разному добавляются новые элементы в массива
var array4 = [5, 4, 3]
array4.append(6)
array4.insert(10, at: 4)
array4 += [9, 8]
array4.append(contentsOf: [5, 6])
array4.insert(contentsOf: [10, 11], at: 9)

//5. Что получится в результате выполнения следующей программы:
var array5 = [7, 5, 2]
array5[1] = 9
array5[2] = array5[1] + array5[2]
print(array5[2])
// Ответ: 11

//6. Напишите код, который:
     //1. Создаст массив с именами людей (строки)
     //2. Создаст переменную greeting (пустую строку)
     //3. В цикле для каждого четного (по порядку) имени добавит в строку greeting "Go left, \(name)"; для каждого нечетного – "Go right, \(name)"

var names: [String] = ["Nikita", "Anton", "Sasha", "Alex"]
var greeting: String = " "

for (i, name) in names.enumerated(){
    if i % 2 == 0 {
        greeting += "Go left, \(name)"
    } else {
        greeting += "Go right, \(name)"
    }
}

//7. Опишите словами, в чем различие между массивом и сетом
// Массивы хранят много элементов в упорядочном виде, а сеты хранят различные значения в неупорядочном виде и элементы не повторяются

// 8. Для следующего кода, что будет результатом выполнения подпунктов:
let myEmoji: Set = ["😂", "🎊", "🕺", "🚀"]
let wifeEmoji: Set = ["🎸", "😂", "🎊", "🦋"]

myEmoji.intersection(wifeEmoji) // ["😂", "🎊"]
myEmoji.symmetricDifference(wifeEmoji) // ["🕺", "🚀", "🎸", "🦋"]
myEmoji.union(wifeEmoji) // ["😂", "🎊", "🕺", "🚀", "🎸", "🦋"]
myEmoji.subtracting(wifeEmoji) // ["🕺", "🚀"]

//9. Напишите по примеру для реального приложения, в которых вы бы использовали Set, Array и Dictionary

var array9: [String] = ["Eggs", "Milk"]
var set: Set<String> = ["Rock", "Classical", "Hip hop"]
var dict: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//10. Для следующего кода допишите цикл, который выведет в консоль результат возведения числа number в степень power:
let number = 5
let power = 3
var num = 1

for _ in 1...power{
   num *= number
}

//11. Представьте, что у нас есть константа, в которой мы храним настроение пользователя (число от 0 до 10):
      //1. Напишите код, который в зависимости от значения этой константы (промежутки [0, 3], [4, 7], [8,10]) выводит в консоль разные сообщения пользователю с помощью if
      //2. аналогично, но вместо if используйте switch
let mood = 7

if mood <= 3{
    print("bad")
} else if mood <= 7 {
    print("good")
} else if mood <= 10 {
    print("fine")
}

switch mood {
case 0..<4: print("bad")
case 4..<8: print("good")
case 8..<11: print("fine")
default:
    print("Invalid set mood!")
}


//Коллекции
//Что выведется в консоль?
var arrayCons1 = ["🏆", "😎", "🎰"]
arrayCons1[1] = "💃"
arrayCons1[2] = arrayCons1[1] + arrayCons1[2]
print(arrayCons1)
// Ответ: ["🏆", "💃", "💃🎰"]

//Условия
//Что выведется в консоль?
var arrayCons2 = ["🏆", "😎", "🎰"]
if arrayCons2.count == 3 && arrayCons2[1] == "😎"{ print("Good emoji") }
else { print("Bad emoji pack") }
//Ответ: Good emoji

//Циклы
//Что выведется в консоль?
var sum = 0
var arrayCons3 = [1, 2, 5, 9, 10, 12, 17]
for v in arrayCons3{
    if v % 2 == 0 { sum += v }
}
print(sum)
// Ответ: 24

//Оператор switch
//В каких случаях удобнее использовать switch, а в каких if?
//Ответ
//If – оператор проверки условия, если истинно – выполняется код, если нет – выполняется код из блока else, если он есть.
//Так же можно составлять подряд несколько условий (else if), но в этом случае разумней использовать оператор switch
