//
//  ViewController.swift
//  Login
//
//  Created by Berry, Brett A. (Student) on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwitch: UISwitch!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (textField.text?.isEmpty) != nil && (textField.text?.isEmpty) != false{
            segue.destination.navigationItem.title = textField.text;
        }

    }

    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
        
    }
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
        
    }
    
}

