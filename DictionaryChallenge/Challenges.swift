//
//  Challenges.swift
//  DictionaryChallenge
//
//  Created by Jim Campagno on 12/22/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation


class Challenges {
    
    // 1
    func createStatesAndCapitals() -> [String: String] {
        return [
            "New York" : "Albany",
            "Ohio" : "Columbus",
            "Florida" : "Tallahassee",
            "Georgia" : "Atlanta",
            "Kentucky" : "Frankfort"
        ]
    }
    
    // 2
    func floridaCapital() -> String? {
        let statesAndCapitals = createStatesAndCapitals()
        return statesAndCapitals["Florida"]
    }
    
    // 3
    func createFloridaCapitalSentence() -> String {
        if let capital = floridaCapital() {
            return "The capital of Florida is \(capital)."
        } else {
            return "Unable to find the capital of Florida."
        }
    }
    
    // 4
    func pennsylvaniaCapital() -> String? {
        let statesAndCapitals = createStatesAndCapitals()
        return statesAndCapitals["Pennsylvania"]
    }
    
    // 5
    func createPennsylvaniaSentence() -> String {
        if let capital = pennsylvaniaCapital() {
            return "The capital of Pennsylvania is \(capital)."
        } else {
            return "Unable to find the capital of Pennsylvania."
        }
    }
    
    // 6
    func createAllStatesAndCapitals() -> [String : String] {
        var all = createStatesAndCapitals()
        all["Pennsylvania"] = "Harrisburg"
        return all
    }
    
    // 7
    func removePennsylvania() -> [String : String] {
        var all = createAllStatesAndCapitals()
        all["Pennsylvania"] = nil
        return all
    }
    
    // 8
    func createBand() -> [String : [String]] {
        let nirvanaMembers = ["Kurt Cobain", "Krist Novoselic", "Dave Grohl"]
        let beatleMembers = ["John Lennon", "George Harrison", "Paul McCartney", "Ringo Starr"]
        let breederMembers = ["Kim Deal", "Kelley Deal", "Josephine Wiggs", "Jim Macpherson"]
        
        let bands = [
            "Nirvana" : nirvanaMembers,
            "The Beatles" : beatleMembers,
            "The Breeders" : breederMembers
        ]
        
        return bands
    }
    
}
