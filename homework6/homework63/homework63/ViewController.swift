//
//  ViewController.swift
//  homework63
//
//  Created by Азамат Агатаев on 27.01.2020.
//  Copyright © 2020 Азамат Агатаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    let power = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        let inputText = inputTextField.text!
        
        if inputText.isEmpty {
            resultLabel.text = "Текстовая строка пустая, введите значение!"
        } else {
            if let number = Int(inputText){
                var num  = 1
                for _ in 1...power {
                    num *= number
                }
                resultLabel.text = "Результат: \(num)"
            } else {
                resultLabel.text = "Введите целое число в строку"
            }
        }
    }
}

