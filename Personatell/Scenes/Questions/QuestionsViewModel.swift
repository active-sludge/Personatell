//
//  QuestionsViewModel.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import Foundation

final class QuestionsViewModel: ObservableObject {
    @Published var questions: [Question] = []
    @Published var score: Int = 0
    @Published var currentIndex: Int = 0
    
    var currentQuestion: Question {
        questions[currentIndex]
    }
    
    var personalityResult: String  {
        switch score {
        case -10...(-5):
            return "You are highly introvert"
        case -5...0:
            return "You are a little introvert"
        case 0...5:
            return "You are a little extrovert"
        case 5...10:
            return "You are highly introvert"
        default:
            return "I have no idea."
        }
    }
    
    init() {
        fetchQuestions()
    }
    
    func fetchQuestions() {
        questions = Question.mockQuestions()
    }
}
