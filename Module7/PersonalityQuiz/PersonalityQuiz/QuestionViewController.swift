//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Berry, Brett A. (Student) on 10/3/24.
//

import UIKit

class QuestionViewController: UIViewController {
    
    //outlets
    
    //question stack views
    
    //single stack
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var singleButtonOne: UIButton!
    @IBOutlet var singleButtonTwo: UIButton!
    @IBOutlet var singleButtonThree: UIButton!
    @IBOutlet var singleButtonFour: UIButton!
    
    //multiple stack view
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var multiLabelOne: UILabel!
    @IBOutlet var multiSwitchOne: UISwitch!
    @IBOutlet var multiLabelTwo: UILabel!
    @IBOutlet var multiSwitchTwo: UISwitch!
    @IBOutlet var multiLabelThree: UILabel!
    @IBOutlet var multiSwitchThree: UISwitch!
    @IBOutlet var multiLabelFour: UILabel!
    @IBOutlet var multiSwitchFour: UISwitch!
    @IBOutlet var multiSubmitButton: UIButton!
    
    //raned stack view
    @IBOutlet var rangedStackView: UIStackView!
    @IBOutlet var rangedLabelOne: UILabel!
    @IBOutlet var rangedLabelTwo: UILabel!
    @IBOutlet var rangedSlider: UISlider!
    @IBOutlet var rangedSubmitButton: UIButton!
    
    //constantly on page
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    var questions: [Question] = [
      Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
          Answer(text: "Steak", type: .dog),
          Answer(text: "Fish", type: .cat),
          Answer(text: "Carrots", type: .rabbit),
          Answer(text: "Corn", type: .turtle)
        ]
      ),
      Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
          Answer(text: "Swimming", type: .turtle),
          Answer(text: "Sleeping", type: .cat),
          Answer(text: "Cuddling", type: .rabbit),
          Answer(text: "Eating", type: .dog)
        ]
      ),
      Question(
        text: "How much do you enjoy car rides?",
        type: .ranged,
        answers: [
          Answer(text: "I dislike them", type: .cat),
          Answer(text: "I get a little nervous", type: .rabbit),
          Answer(text: "I barely notice them", type: .turtle),
          Answer(text: "I love them", type: .dog)
        ]
      )
    ]
    
    var questionIndex: Int = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return  ResultsViewController(coder: coder, responses: answersChosen)
    }
    func nextQuestion(){
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        }
        else{
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    @IBAction func rangedAnswerButtonPressed(_ sender: Any) {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitchOne.isOn{
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitchTwo.isOn{
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitchThree.isOn{
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitchFour.isOn{
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
        
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButtonOne:
            answersChosen.append(currentAnswers[0])
        case singleButtonTwo:
            answersChosen.append(currentAnswers[1])
        case singleButtonThree:
            answersChosen.append(currentAnswers[2])
        case singleButtonFour:
            answersChosen.append(currentAnswers[3])
        default:
            break;
        }
        
        nextQuestion()
    }
    
    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch(currentQuestion.type){
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]){
        singleStackView.isHidden = false
        singleButtonOne.setTitle(answers[0].text, for: .normal)
        singleButtonTwo.setTitle(answers[1].text, for: .normal)
        singleButtonThree.setTitle(answers[2].text, for: .normal)
        singleButtonFour.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]){
        multipleStackView.isHidden = false
        
        multiSwitchOne.isOn = false
        multiSwitchTwo.isOn = false
        multiSwitchThree.isOn = false
        multiSwitchFour.isOn = false
        
        multiLabelOne.text = answers[0].text
        multiLabelTwo.text = answers[1].text
        multiLabelThree.text = answers[2].text
        multiLabelFour.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]){
        rangedStackView.isHidden = false
        rangedSlider.setValue(0.5, animated: false)
        rangedLabelOne.text = answers.first?.text
        rangedLabelTwo.text = answers.last?.text
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
