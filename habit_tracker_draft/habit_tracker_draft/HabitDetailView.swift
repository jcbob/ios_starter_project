//
//  HabitDetailView.swift
//  habit_tracker_draft
//
//  Created by Jakub Wolski on 10/09/2023.
//

import SwiftUI

struct HabitDetailView: View {
    
    var selectedHabit: Habit
    
    var body: some View {
        VStack{
            Text(selectedHabit.title)
                .font(.system(size: 50))
                .padding(.top, 150)
            
            Spacer()
        }
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(selectedHabit: Habit(id: UUID(), title: "Go for a jog"))
    }
}
