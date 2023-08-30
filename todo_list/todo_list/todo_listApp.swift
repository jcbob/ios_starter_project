//
//  todo_listApp.swift
//  todo_list
//
//  Created by Jakub Wolski on 28/08/2023.
//

import SwiftUI

@main
struct todo_listApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
