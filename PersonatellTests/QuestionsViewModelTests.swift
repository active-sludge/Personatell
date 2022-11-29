//
//  QuestionsViewModelTests.swift
//  PersonatellTests
//
//  Created by Can on 29.11.2022.
//

import XCTest
@testable import Personatell

final class QuestionsViewModelTests: XCTestCase {
    var sut: QuestionsViewModeling!
    
    override func setUp() {
        let mockService = MockQuestionsService()
        sut = QuestionsViewModel(service: mockService)
    }

    override func tearDown() {
        sut = nil
    }

    func testFetchQuestionsPopulateQuestions() {
        sut.fetchQuestions()
        XCTAssertFalse(sut.questions.isEmpty)
    }
    
    
}
