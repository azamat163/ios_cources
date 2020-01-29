//
//  ChangeBackgroundViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol ChangeBackgroundControllerDelegate {
    func setColorParent(_ color: UIColor)
}

class ChangeBackgroundViewController: UIViewController {

    var delegate: ChangeBackgroundControllerDelegate?

    private var nestedVC: NestedViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NestedViewController, segue.identifier == "segue" {
            nestedVC = vc
            vc.delegate = self
        }
    }
    
    @IBAction func selectGreenNested(_ sender: Any) {
        self.delegate?.setColorParent(.green)
    }

    @IBAction func selectYellowNested(_ sender: Any) {
        self.delegate?.setColorParent(.yellow)
    }

    @IBAction func selectPurpleNested(_ sender: Any) {
        self.delegate?.setColorParent(.purple)
    }
}

extension ChangeBackgroundViewController: NestedControllerDelegate {
    func setColorChild(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
