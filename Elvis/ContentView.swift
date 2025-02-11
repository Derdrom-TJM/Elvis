//
//  ContentView.swift
//  Elvis
//
//  Created by Todd McFarlin on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    // Use @State to keep the state of the variable when the UI is redrawn
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            HStack{
                Spacer()
                //For Buttons use (titleKey, action) initiator, then hit enter on the return void to create a closure
                Button("Peace"){
                    message = "Peace"
                    imageName = "peacesign"
                }
                Spacer()
                Button("Love"){
                    message = "Love"
                    imageName = "heart"
                }
                Spacer()
                Button("Understanding"){
                    message = "Understanding"
                    imageName = "lightbulb"
                }
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
