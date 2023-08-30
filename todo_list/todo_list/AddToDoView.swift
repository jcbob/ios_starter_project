//
//  AddToDoView.swift
//  todo_list
//
//  Created by Jakub Wolski on 30/08/2023.
//

import SwiftUI
import CoreData

struct AddToDoView: View
{
    
    @State var toDoTitle: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View
    {
        TextField("Add a To Do item...", text: $toDoTitle)
            .padding()
            .toolbar
            {
                Button(action:
                        {
                            let newToDo = ToDo(context: viewContext)
                            newToDo.title = toDoTitle
                            
                            do
                            {
                                try viewContext.save()
                            }
                            catch
                            {
                                let nsError = error as NSError
                                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                            }
                        })
                {
                    Text("Add to list")
                }
            }
    }
}



struct AddToDoView_Previews: PreviewProvider
{
    static var previews: some View
    {
        NavigationView
        {
            AddToDoView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
