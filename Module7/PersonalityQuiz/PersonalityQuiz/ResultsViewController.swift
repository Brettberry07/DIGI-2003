//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Berry, Brett A. (Student) on 10/3/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    var responses: [Answer]

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    init?(coder: NSCoder, responses: [Answer]){
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce( into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
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
