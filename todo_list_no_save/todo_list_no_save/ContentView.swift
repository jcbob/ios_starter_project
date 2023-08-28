//
//  ContentView.swift
//  todo_list_no_save
//
//  Created by Jakub Wolski on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("hello there")
    }
}

struct toDoItems: Identifiable
{
    var id: UUID
    var text: String
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
