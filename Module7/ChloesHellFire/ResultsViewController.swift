//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Hunter, Chloe Mikhayla A. (Student) on 10/3/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    var responses: [Answer]
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        calculatePersonalityResult()
    }
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitonLabel: UILabel!
    
    
    //here might be werid
    func calculatePersonalityResult() {
      let frequencyOfAnswers = responses.reduce(into: [:]) {
        (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitonLabel.text = mostCommonAnswer.definition
        
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
