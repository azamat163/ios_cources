//
//  ViewController.swift
//  homework8
//
//  Created by Азамат Агатаев on 03.02.2020.
//  Copyright © 2020 Азамат Агатаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Point {
        var x: Int
        var y: Int
    }
    
    struct Image {
        var pointImage: Point
        var named: String
        var label: String
        var pointLabel: Point
    }
    
    var images: Array<Image> = [
        Image(pointImage: Point(x: 46, y: 177), named: "image1", label: "label1", pointLabel: Point(x: 46, y: 386)),
        Image(pointImage: Point(x: 234, y: 177), named: "image2", label: "label2", pointLabel: Point(x: 234, y: 386)),
        Image(pointImage: Point(x: 46, y: 404), named: "image3", label: "label3", pointLabel: Point(x: 46, y: 667)),
        Image(pointImage: Point(x: 234, y: 404), named: "image4", label: "label4", pointLabel: Point(x: 234, y: 667))
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for it in images {
            let image = UIImage(named: it.named)
            let imageView = UIImageView(image: image!)
            imageView.contentMode = .scaleToFill
            imageView.backgroundColor = .white
            imageView.frame = CGRect(x: it.pointImage.x, y: it.pointImage.y, width: 130, height: 130)
            let label = UILabel()
            label.frame = CGRect(x: it.pointLabel.x, y: it.pointLabel.y, width: 120, height: 20)
            label.text = it.label
            label.contentMode = .scaleToFill
            label.backgroundColor = .white
            label.textColor = .lightGray
            self.view.addSubview(imageView)
            self.view.addSubview(label)
        }
    }


}

