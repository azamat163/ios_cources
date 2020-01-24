//
//  ViewController.swift
//  homework62
//
//  Created by Azamat on 23.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol Operable {
    func operation() -> Int
}

class Calculator {
    var first: Int
    var second: Int
    var opr: Operation

    init(a: Int, b: Int, opr: Operation) {
        self.first = a
        self.second = b
        self.opr = opr
    }
}

extension Calculator: Operable {
    func operation() -> Int {
        switch self.opr {
        case .plus: return first + second
        case .minus: return first - second
        case .multiplication: return Int(first * second)
        case .division: return Int(first / second)
        }
    }
}


enum Operation: String {
    case plus
    case minus
    case multiplication
    case division

    init(opr: String) {
        switch opr {
        case "+": self = .plus
        case "-": self = .minus
        case "*": self = .multiplication
        default:
            self = .division
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!

    @IBOutlet weak var operationTextField: UITextField!

    @IBOutlet weak var secondTextField: UITextField!

    @IBOutlet weak var resultTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateAction(_ sender: Any) {
        var first = firstTextField.text!
        var second = secondTextField.text!
        var operation = operationTextField.text!
        var resultLabel = resultTextLabel.text!
        var number1: Int?
        var number2: Int?
        var opr: Operation?

        if first.isEmpty{
            first = "Введите целое число в строку"
        } else if Int(first) == nil {
            first = "Некорректные данные"
        } else {
            number1 = Int(first)
        }

        if second.isEmpty{
            second = "Введите целое число в строку"
        } else if Int(second) == nil {
            second = "Некорректные данные"
        } else {
            number2 = Int(second)
        }

        opr = Operation(opr: operation)
        let calc = Calculator(a: number1!, b: number2!, opr: opr!)
        let result = calc.operation()
        print(result)
        resultLabel = String(result)

    }

}

