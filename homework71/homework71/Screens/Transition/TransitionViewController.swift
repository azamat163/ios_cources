//
//  TransitionViewController.swift
//  homework71
//
//  Created by Azamat on 28.01.2020.
//  Copyright © 2020 Azamat. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showGreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "GreenStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "GreenViewController")
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func showBlue(_ sender: Any) {
        let storyboard = UIStoryboard(name: "BlueStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BlueViewController")
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func showRed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "RedStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RedViewController")
        present(vc, animated: true, completion: nil)
    }
}
