//
//  ViewControllerTask3.swift
//  homework9
//
//  Created by Азамат Агатаев on 23.03.2020.
//  Copyright © 2020 Азамат Агатаев. All rights reserved.
//

import UIKit

class ViewControllerTask3: UIViewController {
    var state: Bool = false

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var height: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    @IBAction func act(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.textLabel.numberOfLines = 0
            self.textLabel.lineBreakMode = .byWordWrapping
            self.state = !self.state
            self.height.constant = self.textLabel.frame.height + 5
            self.view.layoutIfNeeded()
        })
    }
}
