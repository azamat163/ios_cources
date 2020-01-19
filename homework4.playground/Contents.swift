import UIKit

//2. Если бы в вашей программе была работа с игральными картами, как бы вы организовали их хранение? Приведите пример.

struct Card{
    var name: String
    var suit: String
}

let jackClub = Card(name: "Jack", suit: "♣" )
let kingHeart = Card(name: "King", suit: "♥️" )

print(jackClub.name)

//3. Каких типов могут быть raw значения кейсов enum’а?
// Integer, String, Tuple, Set, Dict

//4. Напишите класс и структуру для хранения информации (положение, размер) о круге, прямоугольнике.

struct PointStruct {
    var x = 0.0
    var y = 0.0
}

struct SizeStruct {
    var width = 0.0
    var height = 0.0
}

struct RectStruct {
    var point = PointStruct()
    var size = SizeStruct()
}

class PointClass {
    var x: Double = 0.0
    var y: Double = 0.0
    
    init(x: Double, y: Double){
        self.x = x
        self.y = y
    }
}

class SizeClass {
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

class RectClass {
    var point: PointClass
    var size: SizeClass
    
    init(point: PointClass, size: SizeClass) {
        self.point = point
        self.size = size
    }
}

//5. Для следующего кода, выполнение каких строчек закончится ошибкой и почему:

class ClassUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}



class ClassUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}



struct StructUser1{
    let name: String
    init(name: String) {
        self.name = name
    }
}



struct StructUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

//let user1 = ClassUser1(name: "Nikita")
//1. user1.name = "Anton"
// С ошибкой потому что объект user1 объявлен как let константой которую нельзя изменять

//let user2 = ClassUser2(name: "Nikita")
//2. user2.name = "Anton"
// С ошибкой потому что объект user2 объявлен как let константой которую нельзя изменять

//let user3 = StructUser1(name: "Nikita")
//user3.name = "Anton"
// С ошибкой потому что свойство name объялен через let констанкой которую нельзя изменить

//let user4 = StructUser2(name: "Nikita")
// 4. user4.name = "Anton"
//С ошибкой потому что объект user4 объявлен как let константой которую нельзя изменять

//var user5 = ClassUser1(name: "Nikita")
// 5. user5.name = "Anton"
//С ошибкой потому что свойство name объялен через let констанкой которую нельзя изменить

//var user7 = StructUser1(name: "Nikita")
// 7. user7.name = "Anton"
//С ошибкой потому что свойство name объялен через let констанкой которую нельзя изменить


//6. Напишите пример класса автомобиля (какие поля ему нужны – на ваше усмотрение) с конструктором, в котором часть полей будет иметь значение по умолчанию.

class Car {
    var model: String
    var color: String
    var passengers: Int
    var speed: Int
    
    init(model: String, color: String = "red", passengers: Int = 4, speed: Int = 80) {
        self.model = model
        self.color = color
        self.passengers = passengers
        self.speed = speed
    }
}

//7. Напишите класс для калькулятора с функциями для сложения, вычитания, умножения и деления цифр, которые в нем хранятся как свойства.

class Calculator {
    var a: Int
    var b: Int
    var addition: Int {
        return a + b
    }
    var subtraction: Int {
        return a - b
    }
    var multiplication: Int {
        return a * b
    }
    var division: Int {
        return a / b
    }
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

let calc = Calculator(a: 4, b: 2)
calc.addition
calc.subtraction
calc.multiplication
calc.division

//8. В каких случаях следует использовать ключевое слово static?
// Если мы хотим использывать вычисляемые свойства самого класса то необходимо использывать static

//9. Могут ли иметь наследников:
  //1. Классы - ответ да
  //2. Структуры ответ нет
  //3. Enum’ы - ответ нет

//10. Представим, что вы создаете rpg игру. Напишите структуру для хранения координаты игрока, enum для направлений (восток, сервер, запад, юг) и функцию, которая берет к себе на вход позицию и направление и возвращает новую координату (после того как игрок походил на одну клетку в соответствующую сторону). Вызовите эту функцию несколько раз, «походив» своим игроком
