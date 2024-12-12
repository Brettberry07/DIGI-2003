//
//  ViewController.swift
//  Login2
//
//  Created by Berry, Brett A. (Student) on 10/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsernameButton{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    @IBAction func usernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
        
    }
    @IBAction func passwordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}

