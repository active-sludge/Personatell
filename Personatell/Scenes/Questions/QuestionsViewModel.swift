//
//  QuestionsViewModel.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import Foundation
import Combine

final class QuestionsViewModel: ObservableObject {
    @Published var questions: [Question] = []
    @Published var score: Int = 0
    @Published var currentIndex: Int = 0
    @Published var isLoadingQuestion: Bool = false
    
    private let highlyExtrovertRange = (-10)...(-6)
    private let aLittleExtrovertRange = (-5)...(-1)
    private let aLittleIntrovertRange = 1...5
    private let highlyIntrovertRange = 6...10
    
    private let service = QuestionsService()
    private var subscriptions = Set<AnyCancellable>()
    
    var currentQuestion: Question {
        questions[currentIndex]
    }
    
    var personalityResult: String  {
        switch score {
        case highlyExtrovertRange:
            return "You are highly extrovert"
        case aLittleExtrovertRange:
            return "You are a little extrovert"
        case aLittleIntrovertRange:
            return "You are a little introvert"
        case highlyIntrovertRange:
            return "You are highly introvert"
        default:
            return "I have no idea."
        }
    }
    
    init() {
        fetchQuestions()
    }
    
    func fetchQuestions() {
        isLoadingQuestion = true
        service.fetchQuestions()
            .sink { [weak self] questions in
                self?.isLoadingQuestion = false
                self?.questions = questions
            }
            .store(in: &subscriptions)
    }
}
