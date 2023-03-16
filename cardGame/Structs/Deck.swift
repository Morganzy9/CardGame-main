//
//  deck.swift
//  fitnessChalange
//
//  Created by Ислам Пулатов on 1/8/23.
//

import UIKit

struct Deck {
    
   /*
//    static var allCards = [
//
//
//        UIImage(named: "2H")!,
//        UIImage(named: "3H")!,
//        UIImage(named: "4H")!,
//        UIImage(named: "5H")!,
//        UIImage(named: "6H")!,
//        UIImage(named: "7H")!,
//        UIImage(named: "8H")!,
//        UIImage(named: "9H")!,
//        UIImage(named: "10H")!,
//        UIImage(named: "JH")!,
//        UIImage(named: "QH")!,
//        UIImage(named: "KH")!,
//        UIImage(named: "AH")!,
//
//        UIImage(named: "2S")!,
//        UIImage(named: "3S")!,
//        UIImage(named: "4S")!,
//        UIImage(named: "5S")!,
//        UIImage(named: "6S")!,
//        UIImage(named: "7S")!,
//        UIImage(named: "8S")!,
//        UIImage(named: "9S")!,
//        UIImage(named: "10S")!,
//        UIImage(named: "JS")!,
//        UIImage(named: "QS")!,
//        UIImage(named: "KS")!,
//        UIImage(named: "AS")!,
//
//        UIImage(named: "2C")!,
//        UIImage(named: "3C")!,
//        UIImage(named: "4C")!,
//        UIImage(named: "5C")!,
//        UIImage(named: "6C")!,
//        UIImage(named: "7C")!,
//        UIImage(named: "8C")!,
//        UIImage(named: "9C")!,
//        UIImage(named: "10C")!,
//        UIImage(named: "JC")!,
//        UIImage(named: "QC")!,
//        UIImage(named: "KC")!,
//        UIImage(named: "AC")!,
//
//        UIImage(named: "2D")!,
//        UIImage(named: "3D")!,
//        UIImage(named: "4D")!,
//        UIImage(named: "5D")!,
//        UIImage(named: "6D")!,
//        UIImage(named: "7D")!,
//        UIImage(named: "8D")!,
//        UIImage(named: "9D")!,
//        UIImage(named: "10D")!,
//        UIImage(named: "JD")!,
//        UIImage(named: "QD")!,
//        UIImage(named: "KD")!,
//        UIImage(named: "AD")!
//
//
//    ]
    
    static var allCards: [String?] {
           return getAllCards()
       }
*/
    
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
