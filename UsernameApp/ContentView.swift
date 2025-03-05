//
//  ContentView.swift
//  UsernameApp
//
//  Created by Merve Bulut on 5.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("Please Enter Username", text: $username)
                .padding()
                .border(Color.gray, width: 1)
                .cornerRadius(5)
                .padding(.bottom, 20)
            
            Button(action: {
                if username.isEmpty {
                    message = "Please enter a username"
                }
                else {
                    message = "Welcome, \(username)!"
                }
            }) {
                Text("Send")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text(message)
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
