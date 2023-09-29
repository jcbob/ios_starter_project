//
//  AddHabitView.swift
//  habit_tracker_draft
//
//  Created by Jakub Wolski on 10/09/2023.
//

import SwiftUI

struct AddHabitView: View {
    
    @State var habitTitle: String = ""
    
    var body: some View {
        VStack{
            TextField("Go for a jog...", text: $habitTitle)
                .font(.system(size: 50))
                .padding()
                .padding(.top, 150)
            
            Spacer()
            
            Button(action: {
                    habits.append(Habit(id: UUID(), title: habitTitle))}
            ){
                Text("Add to list")
            }
            .font(.system(size: 40))
            
            Spacer()
        }
    }
}


struct AddHabitView_Previews: PreviewProvider {
    static var previews: some View {
        AddHabitView()
    }
}
