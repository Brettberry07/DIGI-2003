//
//  ViewController.swift
//  TwoButtons
//
//  Created by Berry, Brett A. (Student) on 9/13/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func setTextButtonPress(_ sender: Any) {
        label.text = textField.text
        textField.text = ""
    }
    @IBAction func clearTextButtonPress(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    

}

