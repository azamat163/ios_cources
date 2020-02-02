//
//  ViewController.swift
//  homework8
//
//  Created by Азамат Агатаев on 02.02.2020.
//  Copyright © 2020 Азамат Агатаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var index = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    let images: [String] = [
        "image1", "image2", "image3", "image4",
        "image5", "image6", "image7", "image8",
        "image9", "image10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images.first!)
    }
    
    
    func forward(images: Array<String>) -> String {
        if index + 1 == images.count {
            index = 0
            return images[index]
        } else {
            index = index + 1
            return images[index]
        }
    }
    
    func back(images: Array<String>) -> String {
        if index == 0 {
            index = images.count - 1
            return images[index]
        } else {
            index = index - 1
            return images[index]
        }
    }
    
    
    @IBAction func back(_ sender: Any) {
        let currentImage = self.back(images: images)
        imageView.image = UIImage(named: currentImage)
    }
    

    @IBAction func forward(_ sender: Any) {
        let currentImage = self.forward(images: images)
        imageView.image = UIImage(named: currentImage)
    }
}

