//
//  SwitchLightButton.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

struct SwitchLightButton: View {
    @State var buttonText = "Start"
    
    var body: some View {
        Button(action: {
            buttonText = "Next"
        }) {
            Text(buttonText)
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
        Spacer()
        .frame(width: 210, height: 40)
    }
}

struct SwitchLightButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchLightButton()
    }
}
