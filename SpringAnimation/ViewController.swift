//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Squid Yu on 20/10/2017.
//  Copyright © 2017 SquidYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var springButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springButton.layer.cornerRadius = 10
    }
    
    @IBAction func springAnimation(_ sender: SpringButton) {
        sender.beginSpringAnimation()
    }
}
