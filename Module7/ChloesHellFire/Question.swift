//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Hunter, Chloe Mikhayla A. (Student) on 10/3/24.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: songType
}


//THESES ARE THE RESULTS
enum songType: String {
    case chappelRoan = "🎀💅💖", tvGirl = "🟦🩷", weezer = "🎸🧍‍♂️", cryWank = "🐸🥁"
    
    var definition: String {
        switch self {
        case .chappelRoan:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .tvGirl:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .weezer:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .cryWank:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}




var questionIndex = 0
