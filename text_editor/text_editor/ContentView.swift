//
//  ContentView.swift
//  text_editor
//
//  Created by Jakub Wolski on 19/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Hello"
    @State var capitalizationMode = 3
    
    var body: some View {
        VStack{
            Spacer()
            
            
            if capitalizationMode == 1 {
                editorTextView(textContent: userText.uppercased())
            }
            else if capitalizationMode == 2 {
                editorTextView(textContent: userText.capitalized)
            }
            else {
                editorTextView(textContent: userText.lowercased())
            }
            
            
            Spacer()
            
            
            HStack{
                Button(action:{capitalizationMode = 1})
                    {RoundedButton(buttonTitle: "ALL CAP", buttonColor: .blue)}
                
                Button(action:{capitalizationMode = 2})
                    {RoundedButton(buttonTitle: "First Cap", buttonColor: .green)}
                
                Button(action:{capitalizationMode = 3})
                    {RoundedButton(buttonTitle: "lowercase", buttonColor: .red)}
            }
            
            
            Button(action:{
                if capitalizationMode == 1 {
                    UIPasteboard.general.string = userText.uppercased()
                }
                else if capitalizationMode == 2 {
                    UIPasteboard.general.string = userText.capitalized
                }
                else {
                    UIPasteboard.general.string = userText.lowercased()
                }
            })
                {RoundedButton(buttonTitle: "Copy", buttonColor: .gray)}
            .padding(EdgeInsets(top:0, leading:0, bottom:24, trailing:0))
            
            
            TextField("Start typing here...", text: $userText)
                .padding(16)
        }
        .padding(10)
    }
}

struct RoundedButton: View{
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View{
        Text(buttonTitle)
            .frame(maxWidth:.infinity)
            .padding(16)
            .background(buttonColor)
            .font(.body)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

struct editorTextView: View{
    var textContent: String
    var body: some View{
        Text(textContent)
            .font(.largeTitle)
            .bold()
            .padding(EdgeInsets(top:0, leading:24, bottom:105, trailing:16))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
