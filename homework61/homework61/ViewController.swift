//
//  ViewController.swift
//  homework61
//
//  Created by Azamat on 23.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextLabel: UILabel!
    var lst: Array = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func actionBtn(_ sender: Any) {
        var text = inputTextField.text! 

        if text.isEmpty {
            text = "Необходимо ввести в поле текст"
        }else {
            lst.append(text)
            text = lst.joined(separator: " ")
        }
        outputTextLabel.text = text
    }
}


