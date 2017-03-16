//
//  Challenges.swift
//  DictionaryChallenge
//
//  Created by Jim Campagno on 12/22/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation


class Challenges {
    
    
    
    // Answer the problems here.
    
    func createStatesAndCapitals() -> [String : String] {
        let statesAndCapitals = [
            "New York" : "Albany",
            "Ohio" : "Columbus",
            "Florida" : "Tallahassee",
            "Georgia" : "Atlanta",
            "Kentucky" : "Frankfort"
        ]
        return statesAndCapitals
    }
    
    func floridaCapital() -> String? {
        let stateCapitals = createStatesAndCapitals()
        return stateCapitals["Florida"]
    }
    
    func createFloridaCapitalSentence() -> String{
        if let floridaCap = floridaCapital() {
        return "The capital of Florida is \(floridaCap)."
        } else {
        return "Unable to find the capital of Florida."
        }
    }
    
    func pennsylvaniaCapital() -> String? {
        let newDic = createStatesAndCapitals()
        return newDic["Pennsylvania"]
    }
    
    func createPennsylvaniaSentence() -> String {
        if let pennSentence = pennsylvaniaCapital() {
        return "The capital of Pennsylvania is \(pennSentence)."
        } else {
        return "Unable to find the capital of Pennsylvania."
        }
    }
    
    func createAllStatesAndCapitals() -> [String : String] {
    var stateCaps = createStatesAndCapitals()
        stateCaps.updateValue("Harrisburg", forKey: "Pennsylvania")
    return stateCaps
    }
    
    func removePennsylvania() -> [String: String] {
    var stateCaps = createStatesAndCapitals()
        stateCaps.removeValue(forKey: "Pennsylvania")
        return stateCaps
    }
    
    func createBand() -> [String : [String]] {
        let peopleInNirvana = ["Kurt Cobain", "Krist Novoselic", "Dave Grohl"]
        let peopleInTheBeatles = ["John Lennon", "George Harrison", "Paul McCartney", "Ringo Starr"]
        let peopleInTheBreaders = ["Kim Deal", "Kelley Deal", "Josephine Wiggs", "Jim Macpherson"]
        let band = ["Nirvana" : peopleInNirvana,
                    "The Beatles" : peopleInTheBeatles,
                    "The Breaders" : peopleInTheBreaders]
        return band
    }
    
    
    
}

