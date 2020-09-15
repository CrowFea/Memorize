//
//  MemorizeApp.swift
//  Memorize
//
//  Created by liusiyuan on 2020/9/14.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(cards: game)
        }
    }
}
