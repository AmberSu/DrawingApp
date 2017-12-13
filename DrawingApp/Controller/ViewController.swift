//
//  ViewController.swift
//  DrawingApp
//
//  Created by MacOS on 11/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        createRoundedPhoto()
    }
    
    func createRoundedPhoto() {
        image.layer.masksToBounds = false
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        self.view.layoutIfNeeded()
    }
}



