//
//  ContentView.swift
//  HelloWorld
//
//  Created by Antonio Druzo Rocha Neto on 14/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Link("Go to Apple", destination: URL(string: "https://apple.com")!)
            Link("Go to Google", destination: URL(string: "https://google.com")!)
                .buttonStyle(.bordered)
            Link("Send email", destination: URL(string: "mailto:mail@mail.com")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.buttonBorder)
                .controlSize(.large)
                .tint(.indigo)
            
            Link(destination: URL(filePath: "https://apple.com")!) {
                HStack(spacing: 16) {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(.blue)
                        .shadow(radius: 20)
                )
            }
            Text("Gradient")
                .font((.system(size: 80)))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }.padding()
        
    }
}

#Preview {
    ContentView()
}
