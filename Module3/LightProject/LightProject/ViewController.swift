//
//  ViewController.swift
//  LightProject
//
//  Created by Berry, Brett A. (Student) on 9/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    //variables
    var lightOn: Bool = true
    //my uiOutlets
    @IBOutlet var myText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
        myText.text = lightOn ? "ON" : "OFF"
        myText.textColor = lightOn ? .lightGray : .darkGray
    }
    
    @IBAction func onPress(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

