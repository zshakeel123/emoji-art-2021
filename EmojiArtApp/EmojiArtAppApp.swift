//
//  EmojiArtAppApp.swift
//  EmojiArtApp
//
//  Created by Zeeshan Shakeel on 4/15/23.
//

import SwiftUI

@main
struct EmojiArtAppApp: App {
    let document = EmojiArtDocumentVM()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
