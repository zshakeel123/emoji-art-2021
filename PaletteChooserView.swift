//
//  PaletteChooserView.swift
//  EmojiArtApp
//
//  Created by Zeeshan Shakeel on 4/16/23.
//

import SwiftUI

struct PaletteChooserView: View {
    var emojiFontSize: CGFloat = 40
    var emojiFont: Font { .system(size: emojiFontSize) }
    
    @EnvironmentObject var store: PaletteStore
    
    var body: some View {
        let palette = store.palette(at: 3)
        HStack {
            Text(palette.name)
            ScrollingEmojisView(emojis: palette.emojis)
                .font(emojiFont)
        }
    }
    
    //let testEmojis = "😀😷🦠💉👻👀🐶🌲🌎🌞🔥🍎⚽️🚗🚓🚲🛩🚁🚀🛸🏠⌚️🎁🗝🔐❤️⛔️❌❓✅⚠️🎶➕➖🏳️"
}

struct ScrollingEmojisView: View {
    let emojis: String
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map { String($0) }, id: \.self) { emoji in
                    Text(emoji)
                        .onDrag { NSItemProvider (object: emoji as NSString)}
                }
            }
        }
    }
}


struct PaletteChooserView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteChooserView()
    }
}


