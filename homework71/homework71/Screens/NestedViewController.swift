//
//  NestedViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol NestedControllerDelegate  {
    func setColorChild(_ color: UIColor)
}

class NestedViewController: UIViewController {
//    var color: UIColor = .clear

    var changeVC: ChangeBackgroundViewController?

    var delegate: NestedControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ChangeBackgroundViewController,  segue.identifier == "segue"  {
            changeVC = vc
            vc.delegate = self
        }
    }

    @IBAction func selectGreenParent(_ sender: Any) {
        self.delegate?.setColorChild(.green)
    }

    @IBAction func selectYellowParent(_ sender: Any) {
        self.delegate?.setColorChild(.yellow)
    }

    @IBAction func selectPurpleParent(_ sender: Any) {
        self.delegate?.setColorChild(.purple)
    }
}

extension NestedViewController: ChangeBackgroundControllerDelegate {
    func setColorParent(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
