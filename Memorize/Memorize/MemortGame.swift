//
//  MemortGame.swift
//  Memorize
//
//  Created by liusiyuan on 2020/9/15.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("choose: \(card)")
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
    init (numbersOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for index in 0..<numbersOfPairsOfCards {
            let content = cardContentFactory(index)
            cards.append(Card(content: content, id: index * 2))
            cards.append(Card(content: content, id: index * 2 + 1))
        }
    }
}
