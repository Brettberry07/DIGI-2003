//
//  ViewController.swift
//  ApplePie
//
//  Created by Berry, Brett A. (Student) on 9/21/24.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var listOfWords = ["buccaneer","swift","glorious","incandescent","bug","program"];
    let incorrectMovesAllowed = 7;
    var totalWins = 0{
        didSet{
            newRound();
        }
    };
    var totalLosses = 0{
        didSet{
            newRound();
        }
    };
    //image outlet
    @IBOutlet var treeImageView: UIImageView!
    
    //label outlet
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    //button outlet
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound();
        updateUI();
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false;
        let letterString = sender.configuration!.title!;
        let letter = Character(letterString.lowercased());
        currentGame.playerGuessed(letter: letter);
        updateGameState();
        
    }
    
    var currentGame: Game!;
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst();
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed,guessedLetters: []);
            enableLetterButtons(true);
            updateUI();
        }
        else{
            enableLetterButtons(false);
            updateUI();
        }
    }
    
    func enableLetterButtons(_ enable: Bool){
        for button in letterButtons{
            button.isEnabled = enable;
        }
    }
    
    func updateUI(){
        var letters = [String()];
        for letter in currentGame.formattedWord{
            letters.append(String(letter));
        }
        let wordWithSpacing = letters.joined(separator: " ");
        
        correctWordLabel.text = wordWithSpacing;
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)";
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)");
        
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1;
        }
        else if currentGame.word == currentGame.formattedWord{
            totalWins += 1;
        }
        else{
            updateUI();
        }
    }
    
}
