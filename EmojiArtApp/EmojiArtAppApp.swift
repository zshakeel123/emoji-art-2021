//
//  EmojiArtAppApp.swift
//  EmojiArtApp
//
//  Created by Zeeshan Shakeel on 4/15/23.
//

import SwiftUI

@main
struct EmojiArtAppApp: App {
    @StateObject var document = EmojiArtDocumentVM()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
