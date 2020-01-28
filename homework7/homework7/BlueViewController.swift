//
//  BlueViewController.swift
//  homework7
//
//  Created by Azamat on 27.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol BlueControllerDelegate {
    func setRole(_ role: String)
}

class BlueViewController: UIViewController {
    var userName = ""

    var delegate: BlueControllerDelegate?

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var roleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        // Do any additional setup after loading the view.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
//        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        delegate?.setRole(roleTextField.text!)
    }

}
