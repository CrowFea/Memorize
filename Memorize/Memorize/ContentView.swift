//
//  ContentView.swift
//  Memorize
//
//  Created by liusiyuan on 2020/9/14.
//

import SwiftUI

struct ContentView: View {
    var cards: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(cards.cards) { card in
                CardView(card: card).onTapGesture{
                    self.cards.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.caption2)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: EmojiMemoryGame())
    }
}
