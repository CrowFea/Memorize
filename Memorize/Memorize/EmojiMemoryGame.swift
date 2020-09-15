//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by liusiyuan on 2020/9/15.
//

import SwiftUI


class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "👿"]
        return MemoryGame<String>(numbersOfPairsOfCards: emojis.count) { index in
            return emojis[index]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return game.cards
    }
    
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
