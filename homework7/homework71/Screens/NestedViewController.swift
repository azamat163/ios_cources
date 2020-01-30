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
    
    var changeVC: ChangeBackgroundViewController?

    var delegateParent: NestedControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ChangeBackgroundViewController, segue.identifier == "segue"  {
            changeVC = vc
            vc.delegateChild = self
        }
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
}

extension NestedViewController: ChangeBackgroundControllerDelegate {
    func setColorChild(_ color: UIColor) {
        changeVC?.view.backgroundColor = color
    }
}
