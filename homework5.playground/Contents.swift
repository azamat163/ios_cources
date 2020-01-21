import UIKit

//1. В чем различие между классом и объектом?
//Класс является описанием объекта, а объект представляет экземпляр этого класса.

//2. Решить задачу разделения сущностей на классы (используя наследование, где нужно) и протоколы в следующих программах:

//в игре есть сундук с инвентарем. Инвентарь — это различные игровые объекты, например: растения, оружие, квестовые предметы — картинка;
class Chest {
    var result: String = ""

    func pprint(objects: Inventory...){
        for object in objects {
            result += object.show() + "\n"
        }
        print(result)
    }
}

protocol Showable {
    func show() -> String
}

class Inventory: Showable {
    func show() -> String{
        return "I m inventory"
    }
}

class Plant: Inventory {
    override func show() -> String{
        return "I m Plant"
    }
}

class Weapons: Inventory{
    override func show() -> String{
        return "I m weapons"
    }
}

class Picture: Inventory{
    override func show() -> String{
        return "I m picture"
    }
}

let plant = Plant()
let weapon = Weapons()
let chest = Chest()
chest.pprint(objects: plant, weapon)


//в игре показывается карта с: игроками, монстрами (ими управляет компьютер), интерактивными предметами и неподвижными элементами (например, деревья, стены) — картинка;
protocol Drawable {
    func draw() -> String
}

class Map {
    var result: String = ""

    func draw(objects: Drawable...) {
        for object in objects {
            result += object.draw() + "\n"
        }
        print(result)
    }
}
class Player {
    var name: String

    init(name: String) {
        self.name = name
    }
}

extension Player: Drawable {
    func draw() -> String {
        return "I m \(self.name)"
    }
}

class Enemy {
    func move() {}
}

extension Enemy: Drawable {
    func draw() -> String {
        return "I m enemy"
    }
}

class Tree {
    func grow() {}
}

extension Tree: Drawable {
    func draw() -> String {
        return "I m tree"
    }
}

class Wall {
    func build() {}
}

extension Wall: Drawable {
    func draw() -> String {
        return "I m wall"
    }
}

let you = Player(name: "Anton")
let enemy1 = Enemy()
let enemy2 = Enemy()
let wall = Wall()
let tree = Tree()
let map = Map()
map.draw(objects: you, enemy1, enemy2, wall, tree)



//у приложения есть 3 модели машин, у каждой из которых есть 3 комплектации. Модели отличаются названием, картинкой. Комплектации — названием, ценой, цветом, объемом двигателя.

class Car {
    private var equipment: Equipment
    private var model: Model

    init(equipment: Equipment, model: Model) {
        self.equipment = equipment
        self.model = model
    }
}


class Equipment {
    private var name: String
    private var cost: Int
    private var color: String
    private var volume: Double

    init(name: String, cost: Int, color: String, volume: Double) {
        self.name = name
        self.cost = cost
        self.color = color
        self.volume = volume
    }
}

class Model {
    private var name: String
    private var picture: String

    init(name: String, picture: String) {
        self.name = name
        self.picture = picture
    }
}


let model1 = Model(name: "name1", picture: "picture1")
let model2 = Model(name: "name2", picture: "picture2")
let model3 = Model(name: "name3", picture: "picture3")
let equipment1 = Equipment(name: "name1", cost: 123333, color: "#D324", volume: 1.6)
let equipment2 = Equipment(name: "name2", cost: 1233343545, color: "#D545", volume: 2.6)
let equipment3 = Equipment(name: "name3", cost: 1233332343, color: "#F324", volume: 2.3)

let car1 = Car(equipment: equipment1, model: model1)
let car2 = Car(equipment: equipment2, model: model2)
let car3 = Car(equipment: equipment3, model: model3)

//В каких случаях лучше использовать наследование, а в каких — расширения (extension)?
// Наследование стоит использовать случае когда у нас есть общий объект и есть ему подобные объекты и по факту нужно переиспользывать или переопределить методы базового класс и его свойства. Расширение стоит использовать в случае когда нам нужно добавить новое свойство для класса или методы


protocol A{
    func a()
}

protocol B{
    func b()
}

extension B{
    func b(){
        print("B")
    }
}

class C: A{
    func a() {
        print("A")
    }

    func c(){
        print("C")
    }
}

class D: C, B{
    func b() {
        print("B")
    }

    func d(){
        print("D")
    }
}


let v1: A = D()

v1.a()

let v2: B = C() // здесь ошибка аннотации так как С - класс ничего не знает про B
v2.c() //так как v2 класс B, то класс B ничего не знает про метод c()

let v3: C = D()
v3.d() // тут ошибка так как v3 класс C, а в класс C нет реализации метода d(), то будет ошибка

let v4: D = D()
v4.a()
