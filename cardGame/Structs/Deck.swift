//
//  deck.swift
//  fitnessChalange
//
//  Created by Ислам Пулатов on 1/8/23.
//

import UIKit

struct Deck {
    
     static func getAllCards() -> [String?] {
//        MARK: Variables
        let cardSymbols = ["C", "D", "H", "S"]
        var deck = [String?]()
        
//        MARK: LOOP TO GET CARDS
        cardSymbols.forEach { symbol in
            for value in 2...14 {
                if value == 11 {
                    deck.append("J\(symbol)")
                } else if value == 12 {
                    deck.append("Q\(symbol)")
                } else if value == 13 {
                    deck.append("K\(symbol)")
                } else if value == 14 {
                    deck.append("A\(symbol)")
                } else {
                    deck.append("\(value)\(symbol)")
                }
            }
        }
        
        return deck
    }
}
