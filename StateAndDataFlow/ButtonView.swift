//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Ivanov Sergey on 19.12.2020.
//

import SwiftUI

struct ButtonView: View {
    
    let text: String
    let color: Color
    let action: () -> Void
        
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Start", color: .red, action: {})
    }
}
