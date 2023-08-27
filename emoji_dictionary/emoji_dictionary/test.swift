//
//  test.swift
//  emoji_dictionary
//
//  Created by Jakub Wolski on 25/08/2023.
//

import SwiftUI

struct test: View {
    var body: some View {
        TabView{
            EmojiListView()
                .tabItem { Label("List", systemImage: "list.dash") }
            
            EmojiGridView()
                .tabItem { Label("Grid", systemImage: "rectangle.grid.2x2.fill") }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
