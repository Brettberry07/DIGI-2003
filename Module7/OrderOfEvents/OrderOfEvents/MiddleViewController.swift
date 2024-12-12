//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Berry, Brett A. (Student) on 10/3/24.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    var eventNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    //view will appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "ViewWillAppear")
    }
    
    //view did appear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "ViewDidAppear")
    }
    
    //view will disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "ViewWillDisappear")
    }
    
    //view did disappear
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "ViewDidDisappear")
    }
    
    func addEvent(from: String) -> Void{
        if let existingText = myLabel.text {
            myLabel.text = "\(existingText)\nEvent Number: \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
