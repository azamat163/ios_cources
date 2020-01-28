//
//  SelectionViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol SelectionControllerDelegate{
    func setColor(_ color: String)
}

class SelectionViewController: UIViewController {
    
    var delegate: SelectionControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectGreen(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        delegate?.se
    }
    
    @IBAction func selectBlue(_ sender: Any) {
    }
    
    @IBAction func selectRed(_ sender: Any) {
    }
    
}
