//
//  Emoji.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 25/08/2023.
//

import Foundation


struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🌉", definition:"Bridge at night", rating: 3),
                       Emoji(id: UUID(), symbol: "🌌", definition:"The Milky Way", rating: 5),
                       Emoji(id: UUID(), symbol: "🌃", definition:"City at night", rating: 1),
                       Emoji(id: UUID(), symbol: "🌆", definition:"City at sunset", rating: 4),
                       Emoji(id: UUID(), symbol: "🌄", definition:"The Second Coming", rating: 6),
                       Emoji(id: UUID(), symbol: "🌎", definition:"The World", rating: 4),
                       Emoji(id: UUID(), symbol: "🍽", definition:"Dishes & cutlery", rating: 2),
                       Emoji(id: UUID(), symbol: "🚖", definition:"Taxi!", rating: 3),
                       Emoji(id: UUID(), symbol: "🚿", definition:"Best ideas come when under the shower", rating: 5),
                       Emoji(id: UUID(), symbol: "📓", definition:"Some notebook", rating: 1),
                       Emoji(id: UUID(), symbol: "🗑", definition:"Trashbin", rating: 4),
                       Emoji(id: UUID(), symbol: "🧨", definition:"BOOM!", rating: 3),
                       Emoji(id: UUID(), symbol: "📟", definition:"Beep bop boop", rating: 2),
                       Emoji(id: UUID(), symbol: "🕌", definition:"Machete", rating: 1),
                       Emoji(id: UUID(), symbol: "🚁", definition:"Helichopter", rating: 4),
                       Emoji(id: UUID(), symbol: "🚎", definition:"The wheel go round on this guy!", rating: 1),
                       Emoji(id: UUID(), symbol: "🏵", definition:"Fiery flower", rating: 3),
                       Emoji(id: UUID(), symbol: "🏋🏽‍♂️", definition:"THEY DON'T KNOW ME SON!", rating: 5),
                       Emoji(id: UUID(), symbol: "🏂", definition:"Swisshhh swiiisshhhh", rating: 2),
                       Emoji(id: UUID(), symbol: "🥢", definition:"Chop chop", rating: 2),
                       Emoji(id: UUID(), symbol: "🍕", definition:"Pizza", rating: 5)]
