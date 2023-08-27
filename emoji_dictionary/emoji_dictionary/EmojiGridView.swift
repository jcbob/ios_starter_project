//
//  EmojiGridView.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 25/08/2023.
//

import SwiftUI

struct EmojiGridView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(emojis){ listedEmoji in
                        NavigationLink(
                            destination: EmojiDetailView(pickedEmoji: listedEmoji)){
                            Text(listedEmoji.symbol)
                                .font(.system(size: 90))
                        }
                    }
                }
            }
            .navigationTitle("Emoji Dictionary - \(emojis.count)")
        }
    }
}

struct EmojiGridView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGridView()
    }
}
