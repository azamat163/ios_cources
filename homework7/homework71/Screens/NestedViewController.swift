//
//  NestedViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol NestedControllerDelegate  {
    func setColorParent(_ color: UIColor)
}

class NestedViewController: UIViewController {
        
    var delegateParent: NestedControllerDelegate?
                
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func selectGreenParent(_ sender: Any) {
        delegateParent?.setColorParent(.green)
    }

    @IBAction func selectYellowParent(_ sender: Any) {
        delegateParent?.setColorParent(.yellow)
    }

    @IBAction func selectPurpleParent(_ sender: Any) {
        delegateParent?.setColorParent(.purple)
    }
    
    func setColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
