//
//  DictionaryChallengeTests.swift
//  DictionaryChallengeTests
//
//  Created by Jim Campagno on 12/22/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import XCTest
@testable import DictionaryChallenge

class DictionaryChallengeTests: XCTestCase {
    
    var testChallenges = Challenges()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // 1
    func testCreateStatesAndCapitals() {
        let expectedResult = [
            "New York" : "Albany",
            "Ohio" : "Columbus",
            "Florida" : "Tallahassee",
            "Georgia" : "Atlanta",
            "Kentucky" : "Frankfort"
        ]
        
        XCTAssertEqual(testChallenges.createStatesAndCapitals(), expectedResult, Problem.one.error)
    }
    
    // 2
    func testFloridaCapital() {
        let expectedResult = "Tallahassee"
        
        XCTAssertEqual(testChallenges.floridaCapital(), expectedResult, Problem.two.error)
    }
    
    // 3
    func testCreateFloridaCapitalSentence() {
        let expectedResult = "The capital of Florida is Tallahassee."
        
        XCTAssertEqual(testChallenges.createFloridaCapitalSentence(), expectedResult, Problem.three.error)
    }
    
    // 4
    func testPennsylvaniaCapital() {
        XCTAssertNil(testChallenges.pennsylvaniaCapital(), Problem.four.error)
    }
    
    // 5
    func testCreatepennsylvaniaSentence() {
        let expectedResult = "Unable to find the capital of Pennsylvania."
        
        XCTAssertEqual(testChallenges.createPennsylvaniaSentence(), expectedResult, Problem.five.error)
    }
    
    // 6
    func testCreateAllStatesAndCapitals() {
        let all = testChallenges.createAllStatesAndCapitals()
        let result = all["Pennsylvania"]
        
        XCTAssertNotNil(result, Problem.six.error)
        XCTAssertEqual(result, "Harrisburg", Problem.six.error)
    }
    
    // 7
    func testRemovePennsylvania() {
        let all = testChallenges.removePennsylvania()
        let result = all["Pennsylvania"]
        
        XCTAssertNil(result, Problem.seven.error)
    }
    
    // 8
    func testCreateBand() {
        let bands = testChallenges.createBand()
        
        let nirvanaMembers = bands["Nirvana"]
        XCTAssertNotNil(nirvanaMembers, "The key 'Nirvana' should return back a value. The value should not be nil.")
        
        let containsKurt = nirvanaMembers?.contains("Kurt Cobain") ?? false
        XCTAssertTrue(containsKurt, "Using the key 'Nirvana', we should get back an array. This array should contain the member 'Kurt Cobain'.")
    }
    
}


// Helper Enumeration
enum Problem {
    
    case one, two, three, four, five, six, seven
    
    var error: String {
        switch self {
        case .one:
            return "createStatesAndCapitals() should create a dictionary which matches what is being asked in the instruction #1."
        case .two:
            return "floridaCapital() should return back the String 'Tallahassee'"
        case .three:
            return "createFloridaCapitalSentence() is returning back the incorrect String."
        case .four:
            return "pennsylvaniaCapital() should return back nil as our dictionary doesn't have the necessary key-value pair."
        case .five:
            return "createPennsylvaniaSentence() is returning back the incorrect String."
        case .six:
            return "After calling on 'createAllStatesAndCapitals', Pennsylvania as a key should return back the value 'Harrisburg'."
        case .seven:
            return "Calling the 'removePennsylvania()' method should return back a dictionary which doesn't include 'Pennsylvania' as a key."
        }
    }
    
}
