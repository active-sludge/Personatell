//
//  QuestionsService.swift
//  Personatell
//
//  Created by Can on 29.11.2022.
//

import Foundation
import Combine

final class QuestionsService {
    
    func fetchQuestions() -> AnyPublisher<[Question], Never> {
        return CurrentValueSubject<[Question], Never>(Question.mockQuestions())
            .delay(for: 1.5, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
