//
//  GoodVsEvilTests.swift
//  CodeWarsKatasTests
//
//  Created by Khoi Nguyen on 27/3/21.
//

import XCTest

@testable import CodeWarsKatas

class GoodVsEvilChallengeTests: XCTestCase {
    func test_validateGoodInput_returnsFalseOnInvalidParams() {
        let sut = makeSUT()
        XCTAssertFalse(sut.validateGoodInput("1 2 3 4"), "Not enough parameters")
        XCTAssertFalse(sut.validateGoodInput("1 2 3 4 5 a"), "Parameter must be integer")
        XCTAssertFalse(sut.validateGoodInput("1 2 3 -4 5 2"), "Parameter can't be negative")
    }
    
    func test_validateEvilInput_returnsFalseOnInvalidParams() {
        let sut = makeSUT()
        XCTAssertFalse(sut.validateEvilInput("1 2 3 4"), "Not enough parameters")
        XCTAssertFalse(sut.validateEvilInput("1 2 3 4 5 7 a"), "Parameter must be integer")
        XCTAssertFalse(sut.validateEvilInput("1 2 3 -4 5 2 2"), "Parameter can't be negative")
    }
    
    //MARK: - Helpers
    private func makeSUT() -> GoodVsEvilChallenge {
        return GoodVsEvilChallenge()
    }
    
}
