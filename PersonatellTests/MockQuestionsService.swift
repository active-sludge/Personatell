//
//  MockQuestionsService.swift
//  PersonatellTests
//
//  Created by Can on 29.11.2022.
//

import Foundation
import Combine
@testable import Personatell

class MockQuestionsService: QuestionServicable {
    func fetchQuestions() -> AnyPublisher<[Personatell.Question], Never> {
        return CurrentValueSubject<[Question], Never>(Question.mockQuestions())
            .eraseToAnyPublisher()
    }
}
