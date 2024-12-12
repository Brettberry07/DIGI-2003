//
//  ViewController.swift
//  InterfaceBuilderBasics2
//
//  Created by Berry, Brett A. (Student) on 8/29/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myButton: UIView!
    @IBOutlet var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        myButton.tintColor = .red
    }
    
    @IBAction func onPressed(_ sender: Any) {
        mainLabel.text = "This app Rocks!"
    }
}

