//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Ivanov Sergey on 17.12.2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 80)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 160)
            Spacer()
            ButtonView(text: "\(timer.buttonTitle)", color: .red) {
                timer.startTimer()
            }
            Spacer()
            ButtonView(text: "LogOut", color: .blue) {
                user.isRegistered = false
            }
                .offset(x: 0, y: -30)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}


