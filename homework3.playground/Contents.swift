import UIKit


//2. Можно ли в функции вызвать другую функцию? Если да, приведите пример
//Ответ Да

func sumOfTwoNumbers(a: Int, b: Int) -> Int{
    func addition() -> Int{
        return a + b
    }
    return addition()
}

//3. Напишите функцию, которая получает на вход массив строк, а возвращает одну строку, содержащую все элементы полученного массива через запятую

func getElementsOfArray(array: [String]) -> String{
    return array.joined(separator: ", ")
}

//4. Напишите функцию, которая получает на вход два Int’а и меняет их значения, и при этом увеличивает их вдвое
func swapOfTwoNumbers(a: inout Int, b: inout Int) -> [String: Int]{
    let tmp = a
    a = b * b
    b = tmp * tmp
    return ["a": a, "b": b]
}

var a = 5
var b = 3

swapOfTwoNumbers(a: &a, b: &b)


//5. Напишите функцию, которая получает на вход два массива с типом Int и возвращает true, если сумма чисел в первом массиве больше суммы чисел во втором массиве; иначе возвращает false

func isSumFirstArrayGreaterSecond(array1: [Int], array2: [Int]) -> Bool{
    func sum(_ array: [Int]) -> Int{
        return array.reduce(0, +)
    }
    return true ? sum(array1) > sum(array2) : false
}

isSumFirstArrayGreaterSecond(array1: [6, 2], array2: [3, 4])

//6. Напишите функцию, которая получает на вход массив Int и возвращает этот же массив, но отсортированный по убыванию
func getArraySortDesc(_ array: [Int]) -> [Int]{
    var result = [Int]()
    for i in array.reversed() {
        result.append(i)
    }
    return result
}

getArraySortDesc([1, 2, 3, 4])

//7. Напишите функцию, которая получает на вход массив Int и возвращает среднее значение всех элементов

func getAverageArray(array: [Int]) -> Double {
    var sum = 0.0
    for i in array {
        sum += Double(i)
    }
    return sum / Double(array.count)
}

getAverageArray(array: [1, 3, 4, 5])

// 8. Напишите функцию, которая пытается найти индекс строки в массиве: на вход получает массив и строку для поиска, возвращает опшионал индекс этой строки в массиве

func getFindIndexInArray(array: [String], text: String) -> Int? {
    var index: Int?
    for (i, v) in array.enumerated() {
        if v == text {
            index = i
            break
        } else {
            continue
        }
    }
    return index
}

getFindIndexInArray(array: ["Cat", "Dog", "Text"], text: "Dog")


// 9.  Чему будет равен result?
// Ответ: Hello, young man/woman 0
// Так как "25." не сможет преобразоваться в Int и age будет равно 0

//var age = Int("25.") ?? 0
//var result = age < 18 ? "Hello, young man/woman" : "Hello grown man/woman"
//result += " \(age)


//10. Чему будет равен result?

//func inc(a: Int) -> Int{
//    return a + 3
//}


//func dec(a: Int) -> Int{
//    return a - 5
//}


//func compute(a: Int) -> Int{
//    return inc(a: a) + dec(a: a)
//}


//let results = compute(a: 5) - compute(a: 3)

//Ответ: 4, (compute(5) = 8 - compute(3) = 4) = 4


//Функции
//Можно ли в функции вернуть tuple?
// Да можно
//Можно ли внутри функции написать другую функцию?
//Да можно

//В каких случаях следует использовать восклицательный знак для опшиналов?
// В случае когда мы уверены что вернется не nil
