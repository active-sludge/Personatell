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
    
    func fetchQuestions() {
        questions = Question.mockQuestions()
    }
}
