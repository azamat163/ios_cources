//
//  ViewController.swift
//  homework8(4)
//
//  Created by Азамат Агатаев on 10.02.2020.
//  Copyright © 2020 Азамат Агатаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var text1Label: UILabel!
    @IBOutlet weak var text2Label: UILabel!
    
    @IBOutlet weak var btn1Button: UIButton!
    @IBOutlet weak var btn2Button: UIButton!
    
    
    @IBOutlet weak var picture1ImageView: UIImageView!
    @IBOutlet weak var picture2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.text1Label.isHidden = false
        self.text2Label.isHidden = false
        
        btn1Button.isHidden = true
        btn2Button.isHidden = true
        
        picture1ImageView.isHidden = true
        picture2ImageView.isHidden = true
        
    }
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
         case 0:
             self.view.backgroundColor = .green
             self.text1Label.isHidden = false
             self.text2Label.isHidden = false
             
             btn1Button.isHidden = true
             btn2Button.isHidden = true
             
             picture1ImageView.isHidden = true
             picture2ImageView.isHidden = true
        
         case 1:
             self.view.backgroundColor = .blue
             self.text1Label.isHidden = true
             self.text2Label.isHidden = true
             
             btn1Button.isHidden = false
             btn2Button.isHidden = false
             
             picture1ImageView.isHidden = true
             picture2ImageView.isHidden = true
             
         case 2:
             self.view.backgroundColor = .purple
             self.text1Label.isHidden = true
             self.text2Label.isHidden = true
             
             btn1Button.isHidden = true
             btn2Button.isHidden = true
             
             picture1ImageView.isHidden = false
             picture2ImageView.isHidden = false
             
         default:
             break
         
         }
    }
    

}

