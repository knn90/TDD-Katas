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
        let sut = GoodVsEvilChallenge()
        XCTAssertFalse(sut.validateGoodInput("1 2 3 4"), "Not enough parameters")
        XCTAssertFalse(sut.validateGoodInput("1 2 3 4 5 a"), "Parameter must be integer")
        XCTAssertFalse(sut.validateGoodInput("1 2 3 -4 5 2"), "Parameter can't be negative")
    }
}
