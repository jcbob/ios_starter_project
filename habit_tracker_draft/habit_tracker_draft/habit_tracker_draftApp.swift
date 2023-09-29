//
//  habit_tracker_draftApp.swift
//  habit_tracker_draft
//
//  Created by Jakub Wolski on 10/09/2023.
//

import SwiftUI

@main
struct habit_tracker_draftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
