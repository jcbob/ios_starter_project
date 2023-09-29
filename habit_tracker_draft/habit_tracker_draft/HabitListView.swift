//
//  HabitListView.swift
//  habit_tracker_draft
//
//  Created by Jakub Wolski on 10/09/2023.
//

import SwiftUI

struct HabitListView: View {
    
    var body: some View {
        NavigationView{
            List(habits){
                listedHabit in
                NavigationLink(destination: HabitDetailView(selectedHabit: listedHabit)){
                    Text("\(listedHabit.title)")
                }
            }
            .navigationTitle(Text("Habit Tracker"))
            .toolbar{
                ToolbarItem{
                    NavigationLink(destination: AddHabitView()){
                        Label {
                            Text("Add habit")
                        } icon: {
                            Image(systemName: "plus")
                                .font(.system(size: 20, weight: .bold))
                        }
                    }
                }
            }
        }
    }
}


struct HabitListView_Previews: PreviewProvider {
    static var previews: some View {
        HabitListView()
    }
}
