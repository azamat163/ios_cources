//
//  ChangeBackgroundViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit



class ChangeBackgroundViewController: UIViewController {
        
    private var nestedVC: NestedViewController?
    
    @IBOutlet weak var nestedView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NestedViewController, segue.identifier == "segue"  {
            nestedVC = vc
            vc.delegateParent = self
        }
    }
    
    func setColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
    
    @IBAction func selectGreenNested(_ sender: Any) {
        nestedVC?.setColor(.green)
    }

    @IBAction func selectYellowNested(_ sender: Any) {
        nestedVC?.setColor(.yellow)
    }

    @IBAction func selectPurpleNested(_ sender: Any) {
        nestedVC?.setColor(.purple)
    }
}

extension ChangeBackgroundViewController: NestedControllerDelegate {
    func setColorParent(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
