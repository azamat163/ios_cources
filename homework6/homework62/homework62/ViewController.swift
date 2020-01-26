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

struct Calculator {
    var first: Int
    var second: Int
    var opr: Operation
}

extension Calculator: Operable {
    func operation() -> Int {
        switch opr {
        case .plus: return first + second
        case .minus: return first - second
        case .multiplication: return Int(first * second)
        case .division: return Int(first / second)
        }
    }
}

enum Operation: String {
    case plus = "+"
    case minus = "-"
    case multiplication = "*"
    case division = "/"
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
        let first = firstTextField.text!
        let second = secondTextField.text!
        let operation = operationTextField.text!

        if first.isEmpty || second.isEmpty{
            resultTextLabel.text = "Введите целое число в строку"
        } else if Int(first) == nil ||  Int(second) == nil{
            resultTextLabel.text = "Некорректные данные"
        } else {
            let calc = Calculator(
                first: Int(first)!,
                second: Int(second)!,
                opr: getOperation(operation)
            )
            let result = calc.operation()
            resultTextLabel.text = String(result)
        }
    }
    
    func getOperation(_ opr: String) -> Operation{
        switch opr {
        case "+": return Operation.plus
        case "-": return Operation.minus
        case "*": return Operation.multiplication
        default: return Operation.division
        }
    }

}

