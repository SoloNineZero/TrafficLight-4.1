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
                .padding(
                    EdgeInsets(
                        top: 0,
                        leading: 70,
                        bottom: 0,
                        trailing: 70))
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .font(.system(size: 35))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(RoundedRectangle(cornerRadius: 20 ).stroke(Color.white, lineWidth: 2))
        }
    }
}

struct SwitchLightButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchLightButton(title: "Start", action: { } )
    }
}
