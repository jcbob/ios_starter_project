//
//  EmojiDetailView.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 24/08/2023.
//

import SwiftUI

struct EmojiDetailView: View {
    
    var pickedEmoji: Emoji
    
    var body: some View {
        VStack{
            Spacer()
            
            Text(pickedEmoji.symbol)
                .font(.system(size: 325))
            
            Spacer()
            
            Text(pickedEmoji.definition)
                .font(.title)
                .padding()
            
            
            Text(String(repeating: "⭐️", count: pickedEmoji.rating))
                .font(.system(size: 40))
                .padding()
        }
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(pickedEmoji: Emoji(id: UUID(), symbol: "🧾", definition:"A receit of some weird shopping spree", rating: 2))
    }
}
