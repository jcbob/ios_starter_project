//
//  emoji_dictionaryApp.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 24/08/2023.
//

import SwiftUI

@main
struct emoji_dictionaryApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                EmojiListView()
                    .tabItem { Label("List", systemImage: "list.dash") }
                
                EmojiGridView()
                    .tabItem { Label("Grid", systemImage: "rectangle.grid.2x2.fill") }
            }
        }
    }
}
