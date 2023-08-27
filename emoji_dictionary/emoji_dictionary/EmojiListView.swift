//
//  ContentView.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 24/08/2023.
//

import SwiftUI

struct EmojiListView: View {
    
    var body: some View {
        NavigationView{
            List(emojis){
                listedEmoji in
                NavigationLink(
                    destination: EmojiDetailView(pickedEmoji: listedEmoji)){
                    Text("\(listedEmoji.symbol) - \(listedEmoji.definition)")
                }
            }
            .navigationTitle("Emoji Dictionary - \(emojis.count)")
        }
    }
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
