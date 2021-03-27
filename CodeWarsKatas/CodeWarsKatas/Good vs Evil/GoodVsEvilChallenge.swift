//
//  GoodVsEvil.swift
//  CodeWarsKatas
//
//  Created by Khoi Nguyen on 27/3/21.
//
import Foundation

/*
TODO:
 - Validate Good input ✅
 - Calculate Good power
 - Validate Evil input
 - Calculate Evil power
*/

class GoodVsEvilChallenge {
    func evaluate(good: String, vsEvil evil: String) -> String {
        return ""
    }

    func validateGoodInput(_ input: String) -> Bool {
        let arr = input.split(separator: " ")
        let paramString = arr.joined()
        guard arr.count == 6, Int(paramString) != nil else {
            return false
        }
        return true
    }
}

