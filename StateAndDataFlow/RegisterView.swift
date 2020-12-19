//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Ivanov Sergey on 17.12.2020.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(
                        name.count < 3 ? .red : .green
                    )
                    
            }
            .padding(.horizontal, 16)
            
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(
                name.count < 3 ? true : false
            )
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegistered = true
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
