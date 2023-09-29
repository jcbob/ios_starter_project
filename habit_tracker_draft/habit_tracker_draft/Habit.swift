//
//  Habit.swift
//  habit_tracker_draft
//
//  Created by Jakub Wolski on 10/09/2023.
//

import Foundation

struct Habit: Identifiable {
    var id: UUID
    var title: String
}


var habits: [Habit] = []
