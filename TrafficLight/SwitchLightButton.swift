//
//  SwitchLightButton.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

struct SwitchLightButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {        
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 55)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
            .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct SwitchLightButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchLightButton(title: "Start", action: { } )
    }
}
