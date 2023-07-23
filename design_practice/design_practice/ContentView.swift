//
//  ContentView.swift
//  design_practice
//
//  Created by Jakub Wolski on 19/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text("buton")
                    .padding()
                    .background(Color.blue)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
