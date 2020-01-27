//
//  ViewController.swift
//  homework7
//
//  Created by Azamat on 27.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var finalNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? BlueViewController, segue.identifier == "ShowBlue" {
            vc.userName = nameTextField.text!
            vc.delegate = self
        }
    }


}
extension ViewController: BlueControllerDelegate {
    func setRole(_ role: String) {
        finalNameLabel.text = "\(nameTextField.text!), \(role)"
    }
}

