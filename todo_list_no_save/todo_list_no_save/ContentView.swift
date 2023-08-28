//
//  ContentView.swift
//  todo_list_no_save
//
//  Created by Jakub Wolski on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var toDoItems: [ToDo] = [ToDo(id: UUID(), text: "Read the Bible")]
    
    @State var toDoItemText = ""
    
    var body: some View {
        VStack{
            HStack{
                TextField("Brush your teeth...", text: $toDoItemText)
                    .padding(.top)
                    .padding(.leading)
                
                Spacer()
                
                Button(action: {
                    let newToDo = ToDo(id: UUID(), text: toDoItemText)
                    toDoItems.append(newToDo)
                    toDoItemText = ""
                }){
                    Text("Add")
                }
                .padding(.trailing, 24)
                .padding(.top)
            }
            
            List(toDoItems){ listedToDoItem in
                Text(listedToDoItem.text)
            }
        }
    }
}

struct ToDo: Identifiable
{
    var id: UUID
    var text: String
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
