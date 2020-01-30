//
//  SelectionViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol SelectionControllerDelegate{
    func setChangedText(_ text: String)
}

class SelectionViewController: UIViewController {
    var colorText = ""
    
    @IBOutlet weak var nameLabel: UILabel!

    var delegate: SelectionControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = colorText
    }

    @IBAction func selectGreen(_ sender: Any) {
        delegate?.setChangedText("зеленый")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func selectBlue(_ sender: Any) {
        delegate?.setChangedText("синий")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func selectRed(_ sender: Any) {
        delegate?.setChangedText("красный")
        dismiss(animated: true, completion: nil)
    }
    
}
