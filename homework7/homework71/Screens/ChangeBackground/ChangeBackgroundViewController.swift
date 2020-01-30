//
//  ChangeBackgroundViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

protocol ChangeBackgroundControllerDelegate {
    func setColorChild(_ color: UIColor)
}

class ChangeBackgroundViewController: UIViewController {

    var delegateChild: ChangeBackgroundControllerDelegate?

    private var nestedVC: NestedViewController?

    @IBOutlet weak var nestedView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let vc = segue.destination as? NestedViewController  {
            nestedVC = vc
            vc.delegateParent = self
        }
    }

    @IBAction func selectGreenNested(_ sender: Any) {
        delegateChild?.setColorChild(.green)
    }

    @IBAction func selectYellowNested(_ sender: Any) {
        delegateChild?.setColorChild(.yellow)
    }

    @IBAction func selectPurpleNested(_ sender: Any) {
        delegateChild?.setColorChild(.purple)
    }
}

extension ChangeBackgroundViewController: NestedControllerDelegate {
    func setColorParent(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
