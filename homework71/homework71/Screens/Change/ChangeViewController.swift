//
//  ChangeViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

class ChangeViewController: UIViewController {

    @IBOutlet weak var nameColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameColorLabel.text = "Выбран зеленый"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SelectionViewController {
            vc.colorText = nameColorLabel.text!
            vc.delegate = self
        }
    }

    @IBAction func changeColor(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SelectionStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectionViewController")
        present(vc, animated: true, completion: nil)
    }
}

extension ChangeViewController: SelectionControllerDelegate {
    func setChangedText(_ text: String) {
        nameColorLabel.text = "Выбран \(text)"
    }
}
