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
    //@FocusState var titleFocus: Bool
    
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View
    {
        TextField("Add a To Do item...", text: $toDoTitle)
            .font(.largeTitle)
            //.focused($titleFocus)
            //.submitLabel(.return)
            //.onSubmit{ addToDo() }
            .padding()
            .toolbar
            {
                Button(action: addToDo) {
                    Text("Add to list")
                }
            }
            //.onAppear{ DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){titleFocus = true}
    }
    
    
    
    func addToDo()
    {
        let newToDo = ToDo(context: viewContext)
        newToDo.title = toDoTitle
        
        do
        {
            try viewContext.save()
            presentationMode.wrappedValue.dismiss()
        }
        catch
        {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
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
