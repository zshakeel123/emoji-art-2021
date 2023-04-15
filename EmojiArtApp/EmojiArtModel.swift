//
//  EmojiArtModel.swift
//  EmojiArtApp
//
//  Created by Zeeshan Shakeel on 4/15/23.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable{
        let text: String
        var x: Int
        var y: Int
        var size: Int
        var id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    init() {
        
    }
    
    private var uniqueEmojiId = 0
    
    mutating func addEmoji(_ text: String, at Location: (x: Int, y: Int), size: Int) {
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x: Location.x, y: Location.y, size: size, id: uniqueEmojiId))
    }
}
