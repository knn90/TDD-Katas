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
    
    func test_validateGoodInput_returnTrueOnValidParams() {
        let sut = makeSUT()
        XCTAssertTrue(sut.validateGoodInput("0 9 0 1 0 12"))
        XCTAssertTrue(sut.validateGoodInput(" 6 1 3 8 6 7 "))
        XCTAssertTrue(sut.validateGoodInput("6 2 1 4 6 1 "))
        
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
