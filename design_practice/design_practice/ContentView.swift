//
//  ContentView.swift
//  design_practice
//
//  Created by Jakub Wolski on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack{
            Text("\(count) Dracula")
                .bold()
                .font(.largeTitle)
                .padding(20)
            HStack{
                Button(action: {
                    count += 1
                }) {
                    Text("Count Dracula")
                        .padding(EdgeInsets(top:0, leading:55, bottom:0, trailing: 25))
                }
                
                Spacer()
                
                Button(action: {
                    count -= 1
                }) {
                    Text("Bye Dracula")
                        .padding(EdgeInsets(top:0, leading:25, bottom:0, trailing: 55))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
