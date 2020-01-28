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

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeColor(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SelectionStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SelectionViewController")
        present(vc, animated: true, completion: nil)
    }
    

}
